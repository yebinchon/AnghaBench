
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcon_link {int dummy; } ;
struct inode {int i_sb; int i_mtime; int i_ctime; int i_lock; } ;
struct dentry {struct inode* d_inode; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; int local_nls; } ;
struct cifsInodeInfo {scalar_t__ time; } ;


 int CIFSSMBRmDir (int,struct cifs_tcon*,char*,int ,int) ;
 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 int CIFS_MOUNT_MAP_SPECIAL_CHR ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int ENOMEM ;
 int FreeXid (int) ;
 int GetXid () ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 char* build_path_from_dentry (struct dentry*) ;
 int cFYI (int,char*,struct inode*) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int clear_nlink (struct inode*) ;
 int current_fs_time (int ) ;
 int drop_nlink (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int kfree (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

int cifs_rmdir(struct inode *inode, struct dentry *direntry)
{
 int rc = 0;
 int xid;
 struct cifs_sb_info *cifs_sb;
 struct tcon_link *tlink;
 struct cifs_tcon *pTcon;
 char *full_path = ((void*)0);
 struct cifsInodeInfo *cifsInode;

 cFYI(1, "cifs_rmdir, inode = 0x%p", inode);

 xid = GetXid();

 full_path = build_path_from_dentry(direntry);
 if (full_path == ((void*)0)) {
  rc = -ENOMEM;
  goto rmdir_exit;
 }

 cifs_sb = CIFS_SB(inode->i_sb);
 tlink = cifs_sb_tlink(cifs_sb);
 if (IS_ERR(tlink)) {
  rc = PTR_ERR(tlink);
  goto rmdir_exit;
 }
 pTcon = tlink_tcon(tlink);

 rc = CIFSSMBRmDir(xid, pTcon, full_path, cifs_sb->local_nls,
     cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MAP_SPECIAL_CHR);
 cifs_put_tlink(tlink);

 if (!rc) {
  drop_nlink(inode);
  spin_lock(&direntry->d_inode->i_lock);
  i_size_write(direntry->d_inode, 0);
  clear_nlink(direntry->d_inode);
  spin_unlock(&direntry->d_inode->i_lock);
 }

 cifsInode = CIFS_I(direntry->d_inode);
 cifsInode->time = 0;


 cifsInode = CIFS_I(inode);
 cifsInode->time = 0;


 direntry->d_inode->i_ctime = inode->i_ctime = inode->i_mtime =
  current_fs_time(inode->i_sb);

rmdir_exit:
 kfree(full_path);
 FreeXid(xid);
 return rc;
}
