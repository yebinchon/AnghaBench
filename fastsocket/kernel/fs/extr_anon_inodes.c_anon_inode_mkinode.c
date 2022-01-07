
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_mode; int i_ctime; int i_mtime; int i_atime; int i_gid; int i_uid; int i_state; TYPE_1__* i_mapping; int * i_fop; } ;
struct TYPE_4__ {int mnt_sb; } ;
struct TYPE_3__ {int * a_ops; } ;


 int CURRENT_TIME ;
 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 int I_DIRTY ;
 int S_IFREG ;
 int S_IRUSR ;
 int S_IWUSR ;
 int anon_aops ;
 int anon_inode_fops ;
 TYPE_2__* anon_inode_mnt ;
 int current_fsgid () ;
 int current_fsuid () ;
 struct inode* new_inode (int ) ;

__attribute__((used)) static struct inode *anon_inode_mkinode(void)
{
 struct inode *inode = new_inode(anon_inode_mnt->mnt_sb);

 if (!inode)
  return ERR_PTR(-ENOMEM);

 inode->i_fop = &anon_inode_fops;

 inode->i_mapping->a_ops = &anon_aops;







 inode->i_state = I_DIRTY;
 inode->i_mode = S_IFREG | S_IRUSR | S_IWUSR;
 inode->i_uid = current_fsuid();
 inode->i_gid = current_fsgid();
 inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;
 return inode;
}
