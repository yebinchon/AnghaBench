
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct phone_capability {scalar_t__ captype; scalar_t__ cap; } ;
struct TYPE_5__ {int caps; TYPE_1__* caplist; } ;
struct TYPE_4__ {scalar_t__ captype; scalar_t__ cap; } ;
typedef TYPE_2__ IXJ ;



__attribute__((used)) static int capabilities_check(IXJ *j, struct phone_capability *pcreq)
{
 int cnt;
 int retval = 0;
 for (cnt = 0; cnt < j->caps; cnt++) {
  if (pcreq->captype == j->caplist[cnt].captype
      && pcreq->cap == j->caplist[cnt].cap) {
   retval = 1;
   break;
  }
 }
 return retval;
}
