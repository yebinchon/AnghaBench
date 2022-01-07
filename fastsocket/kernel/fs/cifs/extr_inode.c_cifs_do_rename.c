
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct TYPE_2__ {scalar_t__ name; } ;
struct dentry {scalar_t__ d_parent; TYPE_1__ d_name; int d_sb; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; int local_nls; } ;
typedef int __u16 ;


 int CIFSSMBClose (int,struct cifs_tcon*,int ) ;
 int CIFSSMBOpen (int,struct cifs_tcon*,char const*,int ,int ,int ,int *,int*,int *,int ,int) ;
 int CIFSSMBRename (int,struct cifs_tcon*,char const*,char const*,int ,int) ;
 int CIFSSMBRenameOpenFile (int,struct cifs_tcon*,int ,char const*,int ,int) ;
 int CIFS_MOUNT_MAP_SPECIAL_CHR ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int CREATE_NOT_DIR ;
 int DELETE ;
 int ETXTBSY ;
 int FILE_OPEN ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

__attribute__((used)) static int
cifs_do_rename(int xid, struct dentry *from_dentry, const char *fromPath,
  struct dentry *to_dentry, const char *toPath)
{
 struct cifs_sb_info *cifs_sb = CIFS_SB(from_dentry->d_sb);
 struct tcon_link *tlink;
 struct cifs_tcon *pTcon;
 __u16 srcfid;
 int oplock, rc;

 tlink = cifs_sb_tlink(cifs_sb);
 if (IS_ERR(tlink))
  return PTR_ERR(tlink);
 pTcon = tlink_tcon(tlink);


 rc = CIFSSMBRename(xid, pTcon, fromPath, toPath, cifs_sb->local_nls,
      cifs_sb->mnt_cifs_flags &
    CIFS_MOUNT_MAP_SPECIAL_CHR);






 if (rc == 0 || rc != -ETXTBSY)
  goto do_rename_exit;


 if (to_dentry->d_parent != from_dentry->d_parent)
  goto do_rename_exit;


 rc = CIFSSMBOpen(xid, pTcon, fromPath, FILE_OPEN, DELETE,
    CREATE_NOT_DIR, &srcfid, &oplock, ((void*)0),
    cifs_sb->local_nls, cifs_sb->mnt_cifs_flags &
    CIFS_MOUNT_MAP_SPECIAL_CHR);

 if (rc == 0) {
  rc = CIFSSMBRenameOpenFile(xid, pTcon, srcfid,
    (const char *) to_dentry->d_name.name,
    cifs_sb->local_nls, cifs_sb->mnt_cifs_flags &
     CIFS_MOUNT_MAP_SPECIAL_CHR);

  CIFSSMBClose(xid, pTcon, srcfid);
 }
do_rename_exit:
 cifs_put_tlink(tlink);
 return rc;
}
