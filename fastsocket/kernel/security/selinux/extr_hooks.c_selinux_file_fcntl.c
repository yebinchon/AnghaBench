
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* dentry; } ;
struct file {unsigned long f_flags; TYPE_1__ f_path; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int d_inode; } ;


 int EINVAL ;
 int FILE__LOCK ;
 int FILE__WRITE ;
 unsigned long O_APPEND ;
 struct cred* current_cred () ;
 int file_has_perm (struct cred const*,struct file*,int ) ;

__attribute__((used)) static int selinux_file_fcntl(struct file *file, unsigned int cmd,
         unsigned long arg)
{
 const struct cred *cred = current_cred();
 int err = 0;

 switch (cmd) {
 case 134:
  if (!file->f_path.dentry || !file->f_path.dentry->d_inode) {
   err = -EINVAL;
   break;
  }

  if ((file->f_flags & O_APPEND) && !(arg & O_APPEND)) {
   err = file_has_perm(cred, file, FILE__WRITE);
   break;
  }

 case 129:
 case 128:
 case 139:
 case 136:
 case 135:

  err = file_has_perm(cred, file, 0);
  break;
 case 138:
 case 133:
 case 131:





  if (!file->f_path.dentry || !file->f_path.dentry->d_inode) {
   err = -EINVAL;
   break;
  }
  err = file_has_perm(cred, file, FILE__LOCK);
  break;
 }

 return err;
}
