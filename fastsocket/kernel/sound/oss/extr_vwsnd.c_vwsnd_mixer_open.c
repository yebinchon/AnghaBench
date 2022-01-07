
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mixer_minor; struct TYPE_3__* next_dev; } ;
typedef TYPE_1__ vwsnd_dev_t ;
struct inode {int dummy; } ;
struct file {TYPE_1__* private_data; } ;


 int DBGEV (char*,struct inode*,struct file*) ;
 int DEC_USE_COUNT ;
 int ENODEV ;
 int INC_USE_COUNT ;
 scalar_t__ iminor (struct inode*) ;
 TYPE_1__* vwsnd_dev_list ;

__attribute__((used)) static int vwsnd_mixer_open(struct inode *inode, struct file *file)
{
 vwsnd_dev_t *devc;

 DBGEV("(inode=0x%p, file=0x%p)\n", inode, file);

 INC_USE_COUNT;
 for (devc = vwsnd_dev_list; devc; devc = devc->next_dev)
  if (devc->mixer_minor == iminor(inode))
   break;

 if (devc == ((void*)0)) {
  DEC_USE_COUNT;
  return -ENODEV;
 }
 file->private_data = devc;
 return 0;
}
