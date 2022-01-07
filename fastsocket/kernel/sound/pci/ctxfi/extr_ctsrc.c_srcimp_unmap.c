
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msr; } ;
struct srcimp {int mapped; int * imappers; TYPE_2__* mgr; TYPE_1__ rsc; } ;
struct TYPE_4__ {int (* imap_delete ) (TYPE_2__*,int *) ;} ;


 int stub1 (TYPE_2__*,int *) ;

__attribute__((used)) static int srcimp_unmap(struct srcimp *srcimp)
{
 int i;


 for (i = 0; i < srcimp->rsc.msr; i++) {
  if (srcimp->mapped & (0x1 << i)) {
   srcimp->mgr->imap_delete(srcimp->mgr,
       &srcimp->imappers[i]);
   srcimp->mapped &= ~(0x1 << i);
  }
 }

 return 0;
}
