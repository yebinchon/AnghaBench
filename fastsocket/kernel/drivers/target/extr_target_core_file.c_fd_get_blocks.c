
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ block_size; } ;
struct se_device {TYPE_2__ dev_attrib; } ;
struct inode {int i_mode; } ;
struct file {TYPE_1__* f_mapping; } ;
struct fd_dev {unsigned long long fd_dev_size; struct file* fd_file; } ;
typedef int sector_t ;
struct TYPE_3__ {struct inode* host; } ;


 struct fd_dev* FD_DEV (struct se_device*) ;
 scalar_t__ S_ISBLK (int ) ;
 int div_u64 (scalar_t__,scalar_t__) ;
 unsigned long long i_size_read (struct inode*) ;

__attribute__((used)) static sector_t fd_get_blocks(struct se_device *dev)
{
 struct fd_dev *fd_dev = FD_DEV(dev);
 struct file *f = fd_dev->fd_file;
 struct inode *i = f->f_mapping->host;
 unsigned long long dev_size;





 if (S_ISBLK(i->i_mode))
  dev_size = i_size_read(i);
 else
  dev_size = fd_dev->fd_dev_size;

 return div_u64(dev_size - dev->dev_attrib.block_size,
         dev->dev_attrib.block_size);
}
