
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef int poll_table ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int DEB (int ) ;
 unsigned int DMAbuf_poll (struct file*,int,int *) ;
 unsigned int MIDIbuf_poll (int,struct file*,int *) ;






 int iminor (struct inode*) ;
 int printk (char*,int) ;
 unsigned int sequencer_poll (int,struct file*,int *) ;

__attribute__((used)) static unsigned int sound_poll(struct file *file, poll_table * wait)
{
 struct inode *inode = file->f_path.dentry->d_inode;
 int dev = iminor(inode);

 DEB(printk("sound_poll(dev=%d)\n", dev));
 switch (dev & 0x0f) {
 case 129:
 case 128:
  return sequencer_poll(dev, file, wait);

 case 130:
  return MIDIbuf_poll(dev, file, wait);

 case 132:
 case 131:
 case 133:
  return DMAbuf_poll(file, dev >> 4, wait);
 }
 return 0;
}
