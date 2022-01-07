
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
struct TYPE_5__ {int busy; } ;


 int ENODEV ;
 TYPE_3__ dmasound ;
 TYPE_2__ mixer ;
 int try_module_get (int ) ;

__attribute__((used)) static int mixer_open(struct inode *inode, struct file *file)
{
 if (!try_module_get(dmasound.mach.owner))
  return -ENODEV;
 mixer.busy = 1;
 return 0;
}
