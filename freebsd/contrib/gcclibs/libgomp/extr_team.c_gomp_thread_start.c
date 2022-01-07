
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t team_id; scalar_t__ static_trip; scalar_t__ work_share_generation; int * work_share; struct gomp_team* team; } ;
struct gomp_thread_start_data {void (* fn ) (void*) ;scalar_t__ nested; TYPE_1__ ts; void* fn_data; } ;
struct gomp_thread {void (* fn ) (void*) ;int * data; TYPE_1__ ts; int release; } ;
struct gomp_team {int barrier; int ** ordered_release; } ;


 int gomp_barrier_wait (int *) ;
 int gomp_sem_init (int *,int ) ;
 struct gomp_thread** gomp_threads ;
 int gomp_threads_dock ;
 struct gomp_thread gomp_tls_data ;
 int gomp_tls_key ;
 int pthread_setspecific (int ,struct gomp_thread*) ;

__attribute__((used)) static void *
gomp_thread_start (void *xdata)
{
  struct gomp_thread_start_data *data = xdata;
  struct gomp_thread *thr;
  void (*local_fn) (void *);
  void *local_data;




  struct gomp_thread local_thr;
  thr = &local_thr;
  pthread_setspecific (gomp_tls_key, thr);

  gomp_sem_init (&thr->release, 0);


  local_fn = data->fn;
  local_data = data->fn_data;
  thr->ts = data->ts;

  thr->ts.team->ordered_release[thr->ts.team_id] = &thr->release;

  if (data->nested)
    {
      gomp_barrier_wait (&thr->ts.team->barrier);
      local_fn (local_data);
      gomp_barrier_wait (&thr->ts.team->barrier);
    }
  else
    {
      gomp_threads[thr->ts.team_id] = thr;

      gomp_barrier_wait (&gomp_threads_dock);
      do
 {
   struct gomp_team *team;

   local_fn (local_data);



   team = thr->ts.team;
   thr->fn = ((void*)0);
   thr->data = ((void*)0);
   thr->ts.team = ((void*)0);
   thr->ts.work_share = ((void*)0);
   thr->ts.team_id = 0;
   thr->ts.work_share_generation = 0;
   thr->ts.static_trip = 0;

   gomp_barrier_wait (&team->barrier);
   gomp_barrier_wait (&gomp_threads_dock);

   local_fn = thr->fn;
   local_data = thr->data;
 }
      while (local_fn);
    }

  return ((void*)0);
}
