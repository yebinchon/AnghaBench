
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int owner; } ;
struct TYPE_6__ {TYPE_1__ mach; } ;
struct TYPE_5__ {scalar_t__ busy; } ;


 TYPE_3__ dmasound ;
 int lock_kernel () ;
 int module_put (int ) ;
 TYPE_2__ state ;
 int unlock_kernel () ;

__attribute__((used)) static int state_release(struct inode *inode, struct file *file)
{
 lock_kernel();
 state.busy = 0;
 module_put(dmasound.mach.owner);
 unlock_kernel();
 return 0;
}
