
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gomp_work_share {int dummy; } ;
struct TYPE_4__ {unsigned int team_id; scalar_t__ static_trip; scalar_t__ work_share_generation; struct gomp_work_share* work_share; struct gomp_team* team; } ;
struct gomp_thread_start_data {void (* fn ) (void*) ;int nested; void* fn_data; TYPE_2__ ts; } ;
struct gomp_thread_data {int dummy; } ;
struct TYPE_3__ {unsigned int team_id; scalar_t__ static_trip; scalar_t__ work_share_generation; struct gomp_work_share* work_share; struct gomp_team* team; } ;
struct gomp_thread {void (* fn ) (void*) ;int release; void* data; TYPE_1__ ts; } ;
struct gomp_team {int barrier; int ** ordered_release; TYPE_1__ prev_ts; } ;
typedef int pthread_t ;
typedef int pthread_attr_t ;


 int PTHREAD_CREATE_DETACHED ;
 struct gomp_thread_start_data* gomp_alloca (int) ;
 int gomp_barrier_init (int *,unsigned int) ;
 int gomp_barrier_reinit (int *,unsigned int) ;
 int gomp_barrier_wait (int *) ;
 int * gomp_cpu_affinity ;
 int gomp_fatal (char*,int ) ;
 int gomp_init_thread_affinity (int *) ;
 struct gomp_thread** gomp_realloc (struct gomp_thread**,unsigned int) ;
 struct gomp_thread* gomp_thread () ;
 int gomp_thread_attr ;
 int gomp_thread_start ;
 struct gomp_thread** gomp_threads ;
 int gomp_threads_dock ;
 unsigned int gomp_threads_size ;
 unsigned int gomp_threads_used ;
 struct gomp_team* new_team (unsigned int,struct gomp_work_share*) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_getstacksize (int *,size_t*) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_attr_setstacksize (int *,size_t) ;
 int pthread_create (int *,int *,int ,struct gomp_thread_start_data*) ;
 int strerror (int) ;

void
gomp_team_start (void (*fn) (void *), void *data, unsigned nthreads,
   struct gomp_work_share *work_share)
{
  struct gomp_thread_start_data *start_data;
  struct gomp_thread *thr, *nthr;
  struct gomp_team *team;
  bool nested;
  unsigned i, n, old_threads_used = 0;
  pthread_attr_t thread_attr, *attr;

  thr = gomp_thread ();
  nested = thr->ts.team != ((void*)0);

  team = new_team (nthreads, work_share);




  team->prev_ts = thr->ts;

  thr->ts.team = team;
  thr->ts.work_share = work_share;
  thr->ts.team_id = 0;
  thr->ts.work_share_generation = 0;
  thr->ts.static_trip = 0;

  if (nthreads == 1)
    return;

  i = 1;






  if (!nested)
    {
      old_threads_used = gomp_threads_used;

      if (nthreads <= old_threads_used)
 n = nthreads;
      else if (old_threads_used == 0)
 {
   n = 0;
   gomp_barrier_init (&gomp_threads_dock, nthreads);
 }
      else
 {
   n = old_threads_used;



   gomp_barrier_reinit (&gomp_threads_dock, nthreads);
 }




      gomp_threads_used = nthreads;


      for (; i < n; ++i)
 {
   nthr = gomp_threads[i];
   nthr->ts.team = team;
   nthr->ts.work_share = work_share;
   nthr->ts.team_id = i;
   nthr->ts.work_share_generation = 0;
   nthr->ts.static_trip = 0;
   nthr->fn = fn;
   nthr->data = data;
   team->ordered_release[i] = &nthr->release;
 }

      if (i == nthreads)
 goto do_release;




      if (nthreads >= gomp_threads_size)
 {
   gomp_threads_size = nthreads + 1;
   gomp_threads
     = gomp_realloc (gomp_threads,
       gomp_threads_size
       * sizeof (struct gomp_thread_data *));
 }
    }

  attr = &gomp_thread_attr;
  if (gomp_cpu_affinity != ((void*)0))
    {
      size_t stacksize;
      pthread_attr_init (&thread_attr);
      pthread_attr_setdetachstate (&thread_attr, PTHREAD_CREATE_DETACHED);
      if (! pthread_attr_getstacksize (&gomp_thread_attr, &stacksize))
 pthread_attr_setstacksize (&thread_attr, stacksize);
      attr = &thread_attr;
    }

  start_data = gomp_alloca (sizeof (struct gomp_thread_start_data)
       * (nthreads-i));


  for (; i < nthreads; ++i, ++start_data)
    {
      pthread_t pt;
      int err;

      start_data->ts.team = team;
      start_data->ts.work_share = work_share;
      start_data->ts.team_id = i;
      start_data->ts.work_share_generation = 0;
      start_data->ts.static_trip = 0;
      start_data->fn = fn;
      start_data->fn_data = data;
      start_data->nested = nested;

      if (gomp_cpu_affinity != ((void*)0))
 gomp_init_thread_affinity (attr);

      err = pthread_create (&pt, attr, gomp_thread_start, start_data);
      if (err != 0)
 gomp_fatal ("Thread creation failed: %s", strerror (err));
    }

  if (gomp_cpu_affinity != ((void*)0))
    pthread_attr_destroy (&thread_attr);

 do_release:
  gomp_barrier_wait (nested ? &team->barrier : &gomp_threads_dock);





  if (nthreads < old_threads_used)
    gomp_barrier_reinit (&gomp_threads_dock, nthreads);
}
