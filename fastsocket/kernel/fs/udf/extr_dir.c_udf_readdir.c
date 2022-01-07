
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_ino; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {scalar_t__ f_pos; TYPE_2__ f_path; } ;
typedef scalar_t__ (* filldir_t ) (void*,char*,int,scalar_t__,int ,int ) ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int DT_DIR ;
 int do_udf_readdir (struct inode*,struct file*,scalar_t__ (*) (void*,char*,int,scalar_t__,int ,int ),void*) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int udf_readdir(struct file *filp, void *dirent, filldir_t filldir)
{
 struct inode *dir = filp->f_path.dentry->d_inode;
 int result;

 lock_kernel();

 if (filp->f_pos == 0) {
  if (filldir(dirent, ".", 1, filp->f_pos, dir->i_ino, DT_DIR) < 0) {
   unlock_kernel();
   return 0;
  }
  filp->f_pos++;
 }

 result = do_udf_readdir(dir, filp, filldir, dirent);
 unlock_kernel();
  return result;
}
