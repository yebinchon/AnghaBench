
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tv_nsec; scalar_t__ tv_sec; } ;
typedef TYPE_1__ timespec_t ;
struct TYPE_8__ {int * m_owner; int m_lock; } ;
typedef TYPE_2__ kmutex_t ;
typedef int kcondvar_t ;
typedef int hrtime_t ;
typedef int clock_t ;


 int ASSERT (int) ;
 int CALLOUT_FLAG_ABSOLUTE ;
 int CLOCK_REALTIME ;
 int EINTR ;
 int ETIMEDOUT ;
 int NANOSEC ;
 int clock_gettime (int ,TYPE_1__*) ;
 int * curthread ;
 scalar_t__ gethrtime () ;
 int * mutex_owner (TYPE_2__*) ;
 int pthread_cond_timedwait (int *,int *,TYPE_1__*) ;

clock_t
cv_timedwait_hires(kcondvar_t *cv, kmutex_t *mp, hrtime_t tim, hrtime_t res,
    int flag)
{
 int error;
 timespec_t ts;
 hrtime_t delta;

 ASSERT(flag == 0 || flag == CALLOUT_FLAG_ABSOLUTE);

top:
 delta = tim;
 if (flag & CALLOUT_FLAG_ABSOLUTE)
  delta -= gethrtime();

 if (delta <= 0)
  return (-1);

 clock_gettime(CLOCK_REALTIME, &ts);
 ts.tv_sec += delta / NANOSEC;
 ts.tv_nsec += delta % NANOSEC;
 if (ts.tv_nsec >= NANOSEC) {
  ts.tv_sec++;
  ts.tv_nsec -= NANOSEC;
 }

 ASSERT(mutex_owner(mp) == curthread);
 mp->m_owner = ((void*)0);
 error = pthread_cond_timedwait(cv, &mp->m_lock, &ts);
 mp->m_owner = curthread;

 if (error == ETIMEDOUT)
  return (-1);

 if (error == EINTR)
  goto top;

 ASSERT(error == 0);

 return (1);
}
