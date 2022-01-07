
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gomp_work_share {int dummy; } ;
struct gomp_team {int generation_mask; unsigned int nthreads; int master_release; int ** ordered_release; int barrier; struct gomp_work_share** work_shares; int num_live_gen; int oldest_live_gen; int work_share_lock; } ;


 int gomp_barrier_init (int *,unsigned int) ;
 void* gomp_malloc (int) ;
 int gomp_mutex_init (int *) ;
 int gomp_sem_init (int *,int ) ;

__attribute__((used)) static struct gomp_team *
new_team (unsigned nthreads, struct gomp_work_share *work_share)
{
  struct gomp_team *team;
  size_t size;

  size = sizeof (*team) + nthreads * sizeof (team->ordered_release[0]);
  team = gomp_malloc (size);
  gomp_mutex_init (&team->work_share_lock);

  team->work_shares = gomp_malloc (4 * sizeof (struct gomp_work_share *));
  team->generation_mask = 3;
  team->oldest_live_gen = work_share == ((void*)0);
  team->num_live_gen = work_share != ((void*)0);
  team->work_shares[0] = work_share;

  team->nthreads = nthreads;
  gomp_barrier_init (&team->barrier, nthreads);

  gomp_sem_init (&team->master_release, 0);
  team->ordered_release[0] = &team->master_release;

  return team;
}
