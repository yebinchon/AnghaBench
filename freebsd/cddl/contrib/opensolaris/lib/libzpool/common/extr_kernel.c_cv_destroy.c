
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kcondvar_t ;


 int VERIFY (int) ;
 scalar_t__ cond_destroy (int *) ;

void
cv_destroy(kcondvar_t *cv)
{
 VERIFY(cond_destroy(cv) == 0);
}
