
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcimp {int rsc; int * mgr; int * ops; int * imappers; } ;


 int kfree (int *) ;
 int rsc_uninit (int *) ;

__attribute__((used)) static int srcimp_rsc_uninit(struct srcimp *srcimp)
{
 if (((void*)0) != srcimp->imappers) {
  kfree(srcimp->imappers);
  srcimp->imappers = ((void*)0);
 }
 srcimp->ops = ((void*)0);
 srcimp->mgr = ((void*)0);
 rsc_uninit(&srcimp->rsc);

 return 0;
}
