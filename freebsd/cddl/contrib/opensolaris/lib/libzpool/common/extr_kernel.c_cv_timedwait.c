
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {int * m_owner; int m_lock; } ;
typedef TYPE_1__ kmutex_t ;
typedef int kcondvar_t ;
typedef int clock_t ;


 int ASSERT (int) ;
 int EINTR ;
 int ETIMEDOUT ;
 int NANOSEC ;
 int assert (int) ;
 int * curthread ;
 int ddi_get_lbolt () ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int hz ;
 int * mutex_owner (TYPE_1__*) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;

clock_t
cv_timedwait(kcondvar_t *cv, kmutex_t *mp, clock_t abstime)
{
 int error;
 struct timespec ts;
 struct timeval tv;
 clock_t delta;

 abstime += ddi_get_lbolt();
top:
 delta = abstime - ddi_get_lbolt();
 if (delta <= 0)
  return (-1);

 if (gettimeofday(&tv, ((void*)0)) != 0)
  assert(!"gettimeofday() failed");

 ts.tv_sec = tv.tv_sec + delta / hz;
 ts.tv_nsec = tv.tv_usec * 1000 + (delta % hz) * (NANOSEC / hz);
 ASSERT(ts.tv_nsec >= 0);

 if (ts.tv_nsec >= NANOSEC) {
  ts.tv_sec++;
  ts.tv_nsec -= NANOSEC;
 }

 ASSERT(mutex_owner(mp) == curthread);
 mp->m_owner = ((void*)0);
 error = pthread_cond_timedwait(cv, &mp->m_lock, &ts);
 mp->m_owner = curthread;

 if (error == EINTR)
  goto top;

 if (error == ETIMEDOUT)
  return (-1);

 ASSERT(error == 0);

 return (1);
}
