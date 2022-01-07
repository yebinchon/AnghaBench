
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int ki_tid; int ki_pid; int ki_tdev; } ;
struct TYPE_7__ {TYPE_1__* ki_p; } ;
struct TYPE_6__ {scalar_t__ ki_tdev; } ;
typedef TYPE_2__ KINFO ;


 int DIFF_RETURN (TYPE_2__ const*,TYPE_2__ const*,int ) ;
 scalar_t__ NODEV ;
 scalar_t__ SORTCPU ;
 scalar_t__ SORTMEM ;
 int ki_memsize ;
 TYPE_3__* ki_p ;
 int ki_pcpu ;
 scalar_t__ sortby ;

__attribute__((used)) static int
pscomp(const void *a, const void *b)
{
 const KINFO *ka, *kb;

 ka = a;
 kb = b;

 if (sortby == SORTCPU)
  DIFF_RETURN(kb, ka, ki_pcpu);
 if (sortby == SORTMEM)
  DIFF_RETURN(kb, ka, ki_memsize);




 if (ka->ki_p->ki_tdev != kb->ki_p->ki_tdev) {
  if (ka->ki_p->ki_tdev == NODEV)
   return (-1);
  if (kb->ki_p->ki_tdev == NODEV)
   return (1);
  DIFF_RETURN(ka, kb, ki_p->ki_tdev);
 }


 DIFF_RETURN(ka, kb, ki_p->ki_pid);
 DIFF_RETURN(ka, kb, ki_p->ki_tid);
 return (0);
}
