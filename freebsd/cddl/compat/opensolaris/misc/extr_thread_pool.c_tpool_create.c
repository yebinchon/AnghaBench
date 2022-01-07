
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_4__ {int tp_minimum; int tp_maximum; int tp_linger; int tp_attr; int tp_waitcv; int tp_workcv; int tp_busycv; int tp_mutex; } ;
typedef TYPE_1__ tpool_t ;
typedef int pthread_attr_t ;


 int EINVAL ;
 int ENOMEM ;
 int PTHREAD_CREATE_DETACHED ;
 TYPE_1__* calloc (int,int) ;
 int errno ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;

tpool_t *
tpool_create(uint_t min_threads, uint_t max_threads, uint_t linger,
 pthread_attr_t *attr)
{
 tpool_t *tpool;
 int error;

 if (min_threads > max_threads || max_threads < 1) {
  errno = EINVAL;
  return (((void*)0));
 }

 tpool = calloc(1, sizeof (*tpool));
 if (tpool == ((void*)0)) {
  errno = ENOMEM;
  return (((void*)0));
 }
 (void) pthread_mutex_init(&tpool->tp_mutex, ((void*)0));
 (void) pthread_cond_init(&tpool->tp_busycv, ((void*)0));
 (void) pthread_cond_init(&tpool->tp_workcv, ((void*)0));
 (void) pthread_cond_init(&tpool->tp_waitcv, ((void*)0));
 tpool->tp_minimum = min_threads;
 tpool->tp_maximum = max_threads;
 tpool->tp_linger = linger;


 (void) pthread_attr_init(&tpool->tp_attr);
 (void) pthread_attr_setdetachstate(&tpool->tp_attr,
     PTHREAD_CREATE_DETACHED);

 return (tpool);
}
