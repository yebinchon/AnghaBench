
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_state; int i_blocks; int i_flags; int i_lock; int i_mode; int i_gid; int i_uid; int i_nlink; int i_rdev; int i_ctime; int i_mtime; int i_atime; int i_sb; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifs_fattr {int cf_flags; int cf_bytes; int cf_eof; int cf_cifsattrs; int cf_mode; int cf_gid; int cf_uid; int cf_nlink; int cf_rdev; int cf_ctime; int cf_mtime; int cf_atime; } ;
struct cifsInodeInfo {unsigned long time; int delete_pending; int server_eof; int cifsAttrs; } ;


 int CIFS_FATTR_DELETE_PENDING ;
 int CIFS_FATTR_DFS_REFERRAL ;
 int CIFS_FATTR_NEED_REVAL ;
 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 int CIFS_MOUNT_DYNPERM ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int I_NEW ;
 int S_AUTOMOUNT ;
 int cFYI (int,char*,struct inode*,unsigned long,unsigned long) ;
 int cifs_revalidate_cache (struct inode*,struct cifs_fattr*) ;
 int cifs_set_ops (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 scalar_t__ is_size_safe_to_change (struct cifsInodeInfo*,int ) ;
 unsigned long jiffies ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
cifs_fattr_to_inode(struct inode *inode, struct cifs_fattr *fattr)
{
 struct cifsInodeInfo *cifs_i = CIFS_I(inode);
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
 unsigned long oldtime = cifs_i->time;

 cifs_revalidate_cache(inode, fattr);

 inode->i_atime = fattr->cf_atime;
 inode->i_mtime = fattr->cf_mtime;
 inode->i_ctime = fattr->cf_ctime;
 inode->i_rdev = fattr->cf_rdev;
 inode->i_nlink = fattr->cf_nlink;
 inode->i_uid = fattr->cf_uid;
 inode->i_gid = fattr->cf_gid;


 if (inode->i_state & I_NEW ||
     !(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_DYNPERM))
  inode->i_mode = fattr->cf_mode;

 cifs_i->cifsAttrs = fattr->cf_cifsattrs;

 if (fattr->cf_flags & CIFS_FATTR_NEED_REVAL)
  cifs_i->time = 0;
 else
  cifs_i->time = jiffies;

 cFYI(1, "inode 0x%p old_time=%ld new_time=%ld", inode,
   oldtime, cifs_i->time);

 cifs_i->delete_pending = fattr->cf_flags & CIFS_FATTR_DELETE_PENDING;

 cifs_i->server_eof = fattr->cf_eof;




 spin_lock(&inode->i_lock);
 if (is_size_safe_to_change(cifs_i, fattr->cf_eof)) {
  i_size_write(inode, fattr->cf_eof);






  inode->i_blocks = (512 - 1 + fattr->cf_bytes) >> 9;
 }
 spin_unlock(&inode->i_lock);

 if (fattr->cf_flags & CIFS_FATTR_DFS_REFERRAL)
  inode->i_flags |= S_AUTOMOUNT;
 cifs_set_ops(inode);
}
