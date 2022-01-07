
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gomp_work_share {int lock; } ;


 int free (struct gomp_work_share*) ;
 int gomp_mutex_destroy (int *) ;

__attribute__((used)) static void
free_work_share (struct gomp_work_share *ws)
{
  gomp_mutex_destroy (&ws->lock);
  free (ws);
}
