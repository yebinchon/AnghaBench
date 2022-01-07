
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t grant_ref_t ;
typedef int domid_t ;
struct TYPE_2__ {unsigned long frame; unsigned int flags; int domid; } ;


 TYPE_1__* shared ;
 int wmb () ;

__attribute__((used)) static void update_grant_entry(grant_ref_t ref, domid_t domid,
          unsigned long frame, unsigned flags)
{
 shared[ref].frame = frame;
 shared[ref].domid = domid;
 wmb();
 shared[ref].flags = flags;
}
