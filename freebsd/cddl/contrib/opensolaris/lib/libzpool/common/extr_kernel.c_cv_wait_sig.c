
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kmutex_t ;
typedef int kcondvar_t ;


 int cv_wait (int *,int *) ;

int
cv_wait_sig(kcondvar_t *cv, kmutex_t *mp)
{
 cv_wait(cv, mp);
 return (0);
}
