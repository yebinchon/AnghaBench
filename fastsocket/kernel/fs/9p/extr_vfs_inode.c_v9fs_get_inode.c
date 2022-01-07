
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v9fs_session_info {int dummy; } ;
struct super_block {struct v9fs_session_info* s_fs_info; } ;
struct inode {int i_mode; int * i_fop; int * i_op; scalar_t__ i_rdev; TYPE_1__* i_mapping; int i_ctime; int i_mtime; int i_atime; scalar_t__ i_blocks; int i_gid; int i_uid; } ;
struct TYPE_2__ {int * a_ops; } ;


 int CURRENT_TIME ;
 int EINVAL ;
 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int KERN_WARNING ;
 int P9_DEBUG_ERROR ;
 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*,...) ;
 int P9_EPRINTK (int ,char*) ;





 int S_IFMT ;


 int current_fsgid () ;
 int current_fsuid () ;
 int inc_nlink (struct inode*) ;
 int init_special_inode (struct inode*,int,scalar_t__) ;
 int iput (struct inode*) ;
 struct inode* new_inode (struct super_block*) ;
 int v9fs_addr_operations ;
 int v9fs_dir_inode_operations ;
 int v9fs_dir_inode_operations_ext ;
 int v9fs_dir_operations ;
 int v9fs_extended (struct v9fs_session_info*) ;
 int v9fs_file_inode_operations ;
 int v9fs_file_operations ;
 int v9fs_symlink_inode_operations ;

struct inode *v9fs_get_inode(struct super_block *sb, int mode)
{
 int err;
 struct inode *inode;
 struct v9fs_session_info *v9ses = sb->s_fs_info;

 P9_DPRINTK(P9_DEBUG_VFS, "super block: %p mode: %o\n", sb, mode);

 inode = new_inode(sb);
 if (!inode) {
  P9_EPRINTK(KERN_WARNING, "Problem allocating inode\n");
  return ERR_PTR(-ENOMEM);
 }

 inode->i_mode = mode;
 inode->i_uid = current_fsuid();
 inode->i_gid = current_fsgid();
 inode->i_blocks = 0;
 inode->i_rdev = 0;
 inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;
 inode->i_mapping->a_ops = &v9fs_addr_operations;

 switch (mode & S_IFMT) {
 case 131:
 case 134:
 case 133:
 case 128:
  if (!v9fs_extended(v9ses)) {
   P9_DPRINTK(P9_DEBUG_ERROR,
       "special files without extended mode\n");
   err = -EINVAL;
   goto error;
  }
  init_special_inode(inode, inode->i_mode, inode->i_rdev);
  break;
 case 129:
  inode->i_op = &v9fs_file_inode_operations;
  inode->i_fop = &v9fs_file_operations;
  break;
 case 130:
  if (!v9fs_extended(v9ses)) {
   P9_DPRINTK(P9_DEBUG_ERROR,
       "extended modes used w/o 9P2000.u\n");
   err = -EINVAL;
   goto error;
  }
  inode->i_op = &v9fs_symlink_inode_operations;
  break;
 case 132:
  inc_nlink(inode);
  if (v9fs_extended(v9ses))
   inode->i_op = &v9fs_dir_inode_operations_ext;
  else
   inode->i_op = &v9fs_dir_inode_operations;
  inode->i_fop = &v9fs_dir_operations;
  break;
 default:
  P9_DPRINTK(P9_DEBUG_ERROR, "BAD mode 0x%x S_IFMT 0x%x\n",
      mode, mode & S_IFMT);
  err = -EINVAL;
  goto error;
 }

 return inode;

error:
 iput(inode);
 return ERR_PTR(err);
}
