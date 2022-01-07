
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mapping; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int openers; } ;


 TYPE_1__* SMB_I (struct inode*) ;
 int filemap_write_and_wait (int ) ;
 int lock_kernel () ;
 int smb_close (struct inode*) ;
 int unlock_kernel () ;

__attribute__((used)) static int
smb_file_release(struct inode *inode, struct file * file)
{
 lock_kernel();
 if (!--SMB_I(inode)->openers) {



  filemap_write_and_wait(inode->i_mapping);
  smb_close(inode);
 }
 unlock_kernel();
 return 0;
}
