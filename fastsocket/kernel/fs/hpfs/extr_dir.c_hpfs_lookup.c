
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct quad_buffer_head {int dummy; } ;
struct nameidata {int dummy; } ;
struct TYPE_15__ {int * a_ops; } ;
struct TYPE_14__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_13__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_12__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct inode {int i_state; int i_mode; int i_nlink; int i_size; int i_blocks; TYPE_5__ i_data; TYPE_4__ i_atime; TYPE_6__* i_sb; TYPE_3__ i_mtime; TYPE_2__ i_ctime; int i_ino; int * i_fop; int * i_op; } ;
struct hpfs_inode_info {int mmu_private; int i_ea_mode; scalar_t__ i_ea_size; int i_parent_dir; int i_dno; } ;
struct hpfs_dirent {int file_size; scalar_t__ directory; scalar_t__ read_only; scalar_t__ ea_size; int read_date; int write_date; int creation_date; scalar_t__ has_xtd_perm; scalar_t__ has_acl; int fnode; } ;
struct TYPE_11__ {char* name; unsigned int len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef int ino_t ;
struct TYPE_17__ {scalar_t__ sb_eas; } ;
struct TYPE_16__ {int s_flags; } ;


 int ENAMETOOLONG ;
 int ENOENT ;
 struct dentry* ERR_PTR (int) ;
 int I_NEW ;
 int MS_RDONLY ;
 int S_IFREG ;
 int d_add (struct dentry*,struct inode*) ;
 int hpfs_aops ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_chk_name (char*,unsigned int*) ;
 int hpfs_decide_conv (struct inode*,char*,unsigned int) ;
 int hpfs_error (TYPE_6__*,char*) ;
 int hpfs_file_iops ;
 int hpfs_file_ops ;
 struct hpfs_inode_info* hpfs_i (struct inode*) ;
 int hpfs_init_inode (struct inode*) ;
 int hpfs_read_inode (struct inode*) ;
 TYPE_8__* hpfs_sb (TYPE_6__*) ;
 int hpfs_set_dentry_operations (struct dentry*) ;
 struct inode* iget_locked (TYPE_6__*,int ) ;
 void* local_to_gmt (TYPE_6__*,int ) ;
 int lock_kernel () ;
 struct hpfs_dirent* map_dirent (struct inode*,int ,char*,unsigned int,int *,struct quad_buffer_head*) ;
 int unlock_kernel () ;
 int unlock_new_inode (struct inode*) ;

struct dentry *hpfs_lookup(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
 const char *name = dentry->d_name.name;
 unsigned len = dentry->d_name.len;
 struct quad_buffer_head qbh;
 struct hpfs_dirent *de;
 ino_t ino;
 int err;
 struct inode *result = ((void*)0);
 struct hpfs_inode_info *hpfs_result;

 lock_kernel();
 if ((err = hpfs_chk_name((char *)name, &len))) {
  if (err == -ENAMETOOLONG) {
   unlock_kernel();
   return ERR_PTR(-ENAMETOOLONG);
  }
  goto end_add;
 }





 de = map_dirent(dir, hpfs_i(dir)->i_dno, (char *) name, len, ((void*)0), &qbh);





 if (!de) goto end;





 ino = de->fnode;





 result = iget_locked(dir->i_sb, ino);
 if (!result) {
  hpfs_error(dir->i_sb, "hpfs_lookup: can't get inode");
  goto bail1;
 }
 if (result->i_state & I_NEW) {
  hpfs_init_inode(result);
  if (de->directory)
   hpfs_read_inode(result);
  else if (de->ea_size && hpfs_sb(dir->i_sb)->sb_eas)
   hpfs_read_inode(result);
  else {
   result->i_mode |= S_IFREG;
   result->i_mode &= ~0111;
   result->i_op = &hpfs_file_iops;
   result->i_fop = &hpfs_file_ops;
   result->i_nlink = 1;
  }
  unlock_new_inode(result);
 }
 hpfs_result = hpfs_i(result);
 if (!de->directory) hpfs_result->i_parent_dir = dir->i_ino;

 hpfs_decide_conv(result, (char *)name, len);

 if (de->has_acl || de->has_xtd_perm) if (!(dir->i_sb->s_flags & MS_RDONLY)) {
  hpfs_error(result->i_sb, "ACLs or XPERM found. This is probably HPFS386. This driver doesn't support it now. Send me some info on these structures");
  goto bail1;
 }






 if (!result->i_ctime.tv_sec) {
  if (!(result->i_ctime.tv_sec = local_to_gmt(dir->i_sb, de->creation_date)))
   result->i_ctime.tv_sec = 1;
  result->i_ctime.tv_nsec = 0;
  result->i_mtime.tv_sec = local_to_gmt(dir->i_sb, de->write_date);
  result->i_mtime.tv_nsec = 0;
  result->i_atime.tv_sec = local_to_gmt(dir->i_sb, de->read_date);
  result->i_atime.tv_nsec = 0;
  hpfs_result->i_ea_size = de->ea_size;
  if (!hpfs_result->i_ea_mode && de->read_only)
   result->i_mode &= ~0222;
  if (!de->directory) {
   if (result->i_size == -1) {
    result->i_size = de->file_size;
    result->i_data.a_ops = &hpfs_aops;
    hpfs_i(result)->mmu_private = result->i_size;






    result->i_blocks = 1 + ((result->i_size + 511) >> 9);
   }
  }
 }

 hpfs_brelse4(&qbh);





 end:
 end_add:
 hpfs_set_dentry_operations(dentry);
 unlock_kernel();
 d_add(dentry, result);
 return ((void*)0);




 bail1:

 hpfs_brelse4(&qbh);



 unlock_kernel();
 return ERR_PTR(-ENOENT);
}
