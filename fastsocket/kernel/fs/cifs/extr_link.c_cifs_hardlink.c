
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct inode {int i_sb; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct cifs_tcon {scalar_t__ unix_ext; } ;
struct cifs_sb_info {int mnt_cifs_flags; int local_nls; } ;
struct cifsInodeInfo {scalar_t__ time; } ;
struct TYPE_2__ {int i_nlink; } ;


 int CIFSCreateHardLink (int,struct cifs_tcon*,char*,char*,int ,int) ;
 int CIFSUnixCreateHardLink (int,struct cifs_tcon*,char*,char*,int ,int) ;
 struct cifsInodeInfo* CIFS_I (TYPE_1__*) ;
 int CIFS_MOUNT_MAP_SPECIAL_CHR ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int EACCES ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int FreeXid (int) ;
 int GetXid () ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 char* build_path_from_dentry (struct dentry*) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int d_drop (struct dentry*) ;
 int kfree (char*) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

int
cifs_hardlink(struct dentry *old_file, struct inode *inode,
       struct dentry *direntry)
{
 int rc = -EACCES;
 int xid;
 char *fromName = ((void*)0);
 char *toName = ((void*)0);
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
 struct tcon_link *tlink;
 struct cifs_tcon *pTcon;
 struct cifsInodeInfo *cifsInode;

 tlink = cifs_sb_tlink(cifs_sb);
 if (IS_ERR(tlink))
  return PTR_ERR(tlink);
 pTcon = tlink_tcon(tlink);

 xid = GetXid();

 fromName = build_path_from_dentry(old_file);
 toName = build_path_from_dentry(direntry);
 if ((fromName == ((void*)0)) || (toName == ((void*)0))) {
  rc = -ENOMEM;
  goto cifs_hl_exit;
 }

 if (pTcon->unix_ext)
  rc = CIFSUnixCreateHardLink(xid, pTcon, fromName, toName,
         cifs_sb->local_nls,
         cifs_sb->mnt_cifs_flags &
      CIFS_MOUNT_MAP_SPECIAL_CHR);
 else {
  rc = CIFSCreateHardLink(xid, pTcon, fromName, toName,
     cifs_sb->local_nls,
     cifs_sb->mnt_cifs_flags &
      CIFS_MOUNT_MAP_SPECIAL_CHR);
  if ((rc == -EIO) || (rc == -EINVAL))
   rc = -EOPNOTSUPP;
 }

 d_drop(direntry);



 if (old_file->d_inode) {
  cifsInode = CIFS_I(old_file->d_inode);
  if (rc == 0) {
   old_file->d_inode->i_nlink++;






  }


  cifsInode->time = 0;






 }

cifs_hl_exit:
 kfree(fromName);
 kfree(toName);
 FreeXid(xid);
 cifs_put_tlink(tlink);
 return rc;
}
