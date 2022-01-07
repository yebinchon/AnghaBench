
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kcondvar_t ;


 int VERIFY (int) ;
 scalar_t__ cond_signal (int *) ;

void
cv_signal(kcondvar_t *cv)
{
 VERIFY(cond_signal(cv) == 0);
}
