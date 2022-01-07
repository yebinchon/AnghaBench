
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int dpr_stop; int dpr_lock; int dpr_cv; } ;
typedef TYPE_1__ dt_proc_t ;


 int DT_MUTEX_HELD (int *) ;
 int DT_PROC_STOP_IDLE ;
 int assert (int) ;
 int dt_proc_bpdisable (TYPE_1__*) ;
 int dt_proc_bpenable (TYPE_1__*) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_wait (int *,int *) ;

__attribute__((used)) static void
dt_proc_stop(dt_proc_t *dpr, uint8_t why)
{
 assert(DT_MUTEX_HELD(&dpr->dpr_lock));
 assert(why != DT_PROC_STOP_IDLE);

 if (dpr->dpr_stop & why) {
  dpr->dpr_stop |= DT_PROC_STOP_IDLE;
  dpr->dpr_stop &= ~why;

  (void) pthread_cond_broadcast(&dpr->dpr_cv);






  dt_proc_bpdisable(dpr);

  while (dpr->dpr_stop & DT_PROC_STOP_IDLE)
   (void) pthread_cond_wait(&dpr->dpr_cv, &dpr->dpr_lock);

  dt_proc_bpenable(dpr);
 }
}
