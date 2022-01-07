
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kcondvar_t ;


 int VERIFY (int) ;
 scalar_t__ cond_init (int *,char*,int *) ;

void
cv_init(kcondvar_t *cv, char *name, int type, void *arg)
{
 VERIFY(cond_init(cv, name, ((void*)0)) == 0);
}
