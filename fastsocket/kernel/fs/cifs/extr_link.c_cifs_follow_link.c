
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct cifs_tcon {TYPE_1__* ses; } ;
struct cifs_sb_info {int mnt_cifs_flags; int local_nls; } ;
struct TYPE_2__ {int capabilities; } ;


 int CAP_UNIX ;
 int CIFSQueryMFSymLink (int,struct cifs_tcon*,char*,char**,int ,int) ;
 int CIFSSMBUnixQuerySymLink (int,struct cifs_tcon*,char*,char**,int ) ;
 int CIFS_MOUNT_MAP_SPECIAL_CHR ;
 int CIFS_MOUNT_MF_SYMLINKS ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int EACCES ;
 int ENOMEM ;
 char* ERR_PTR (int) ;
 int FreeXid (int) ;
 int GetXid () ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 char* build_path_from_dentry (struct dentry*) ;
 int cFYI (int,char*,char*,struct inode*) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int kfree (char*) ;
 int nd_set_link (struct nameidata*,char*) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

void *
cifs_follow_link(struct dentry *direntry, struct nameidata *nd)
{
 struct inode *inode = direntry->d_inode;
 int rc = -ENOMEM;
 int xid;
 char *full_path = ((void*)0);
 char *target_path = ((void*)0);
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
 struct tcon_link *tlink = ((void*)0);
 struct cifs_tcon *tcon;

 xid = GetXid();

 tlink = cifs_sb_tlink(cifs_sb);
 if (IS_ERR(tlink)) {
  rc = PTR_ERR(tlink);
  tlink = ((void*)0);
  goto out;
 }
 tcon = tlink_tcon(tlink);
 if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MF_SYMLINKS)
     && !(tcon->ses->capabilities & CAP_UNIX)) {
  rc = -EACCES;
  goto out;
 }

 full_path = build_path_from_dentry(direntry);
 if (!full_path)
  goto out;

 cFYI(1, "Full path: %s inode = 0x%p", full_path, inode);

 rc = -EACCES;




 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MF_SYMLINKS)
  rc = CIFSQueryMFSymLink(xid, tcon, full_path, &target_path,
     cifs_sb->local_nls,
     cifs_sb->mnt_cifs_flags &
      CIFS_MOUNT_MAP_SPECIAL_CHR);

 if ((rc != 0) && (tcon->ses->capabilities & CAP_UNIX))
  rc = CIFSSMBUnixQuerySymLink(xid, tcon, full_path, &target_path,
          cifs_sb->local_nls);

 kfree(full_path);
out:
 if (rc != 0) {
  kfree(target_path);
  target_path = ERR_PTR(rc);
 }

 FreeXid(xid);
 if (tlink)
  cifs_put_tlink(tlink);
 nd_set_link(nd, target_path);
 return ((void*)0);
}
