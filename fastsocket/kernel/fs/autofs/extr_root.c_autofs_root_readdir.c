
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_ino; int i_sb; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {int f_pos; TYPE_2__ f_path; } ;
struct autofs_dirhash {int dummy; } ;
struct autofs_sb_info {struct autofs_dirhash dirhash; } ;
struct autofs_dir_ent {char* name; int len; int ino; int dentry; } ;
typedef int off_t ;
typedef int (* filldir_t ) (void*,char*,int,int,int ,int ) ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int DT_DIR ;
 int DT_UNKNOWN ;
 struct autofs_dir_ent* autofs_hash_enum (struct autofs_dirhash*,int*,struct autofs_dir_ent*) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 int d_mountpoint (int ) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int autofs_root_readdir(struct file *filp, void *dirent, filldir_t filldir)
{
 struct autofs_dir_ent *ent = ((void*)0);
 struct autofs_dirhash *dirhash;
 struct autofs_sb_info *sbi;
 struct inode * inode = filp->f_path.dentry->d_inode;
 off_t onr, nr;

 lock_kernel();

 sbi = autofs_sbi(inode->i_sb);
 dirhash = &sbi->dirhash;
 nr = filp->f_pos;

 switch(nr)
 {
 case 0:
  if (filldir(dirent, ".", 1, nr, inode->i_ino, DT_DIR) < 0)
   goto out;
  filp->f_pos = ++nr;

 case 1:
  if (filldir(dirent, "..", 2, nr, inode->i_ino, DT_DIR) < 0)
   goto out;
  filp->f_pos = ++nr;

 default:
  while (onr = nr, ent = autofs_hash_enum(dirhash,&nr,ent)) {
   if (!ent->dentry || d_mountpoint(ent->dentry)) {
    if (filldir(dirent,ent->name,ent->len,onr,ent->ino,DT_UNKNOWN) < 0)
     goto out;
    filp->f_pos = nr;
   }
  }
  break;
 }

out:
 unlock_kernel();
 return 0;
}
