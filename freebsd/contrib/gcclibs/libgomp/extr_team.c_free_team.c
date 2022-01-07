
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gomp_team {int master_release; int barrier; int work_share_lock; struct gomp_team* work_shares; } ;


 int free (struct gomp_team*) ;
 int gomp_barrier_destroy (int *) ;
 int gomp_mutex_destroy (int *) ;
 int gomp_sem_destroy (int *) ;

__attribute__((used)) static void
free_team (struct gomp_team *team)
{
  free (team->work_shares);
  gomp_mutex_destroy (&team->work_share_lock);
  gomp_barrier_destroy (&team->barrier);
  gomp_sem_destroy (&team->master_release);
  free (team);
}
