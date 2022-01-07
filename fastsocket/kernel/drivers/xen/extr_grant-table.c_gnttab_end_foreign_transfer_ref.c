
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
typedef size_t grant_ref_t ;
struct TYPE_2__ {int flags; unsigned long frame; } ;


 int BUG_ON (int) ;
 int GTF_transfer_committed ;
 int GTF_transfer_completed ;
 int cpu_relax () ;
 int rmb () ;
 TYPE_1__* shared ;
 int sync_cmpxchg (int*,int,int ) ;

unsigned long gnttab_end_foreign_transfer_ref(grant_ref_t ref)
{
 unsigned long frame;
 u16 flags;





 while (!((flags = shared[ref].flags) & GTF_transfer_committed)) {
  if (sync_cmpxchg(&shared[ref].flags, flags, 0) == flags)
   return 0;
  cpu_relax();
 }


 while (!(flags & GTF_transfer_completed)) {
  flags = shared[ref].flags;
  cpu_relax();
 }

 rmb();
 frame = shared[ref].frame;
 BUG_ON(frame == 0);

 return frame;
}
