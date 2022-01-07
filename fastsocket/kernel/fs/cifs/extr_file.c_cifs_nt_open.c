
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct cifs_tcon {scalar_t__ unix_ext; TYPE_1__* ses; } ;
struct cifs_sb_info {int mnt_cifs_flags; int local_nls; } ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_2__ {int capabilities; } ;
typedef int FILE_ALL_INFO ;


 int CAP_NT_SMBS ;
 int CIFSSMBOpen (int,struct cifs_tcon*,char*,int,int,int,int *,int *,int *,int ,int) ;
 int CIFS_MOUNT_MAP_SPECIAL_CHR ;
 int CREATE_NOT_DIR ;
 int CREATE_OPEN_BACKUP_INTENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SMBLegacyOpen (int,struct cifs_tcon*,char*,int,int,int,int *,int *,int *,int ,int) ;
 scalar_t__ backup_cred (struct cifs_sb_info*) ;
 int cifs_convert_flags (unsigned int) ;
 int cifs_get_disposition (unsigned int) ;
 int cifs_get_inode_info (struct inode**,char*,int *,int ,int,int *) ;
 int cifs_get_inode_info_unix (struct inode**,char*,int ,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;

__attribute__((used)) static int
cifs_nt_open(char *full_path, struct inode *inode, struct cifs_sb_info *cifs_sb,
      struct cifs_tcon *tcon, unsigned int f_flags, __u32 *poplock,
      __u16 *pnetfid, int xid)
{
 int rc;
 int desiredAccess;
 int disposition;
 int create_options = CREATE_NOT_DIR;
 FILE_ALL_INFO *buf;

 desiredAccess = cifs_convert_flags(f_flags);
 disposition = cifs_get_disposition(f_flags);



 buf = kmalloc(sizeof(FILE_ALL_INFO), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 if (backup_cred(cifs_sb))
  create_options |= CREATE_OPEN_BACKUP_INTENT;

 if (tcon->ses->capabilities & CAP_NT_SMBS)
  rc = CIFSSMBOpen(xid, tcon, full_path, disposition,
    desiredAccess, create_options, pnetfid, poplock, buf,
    cifs_sb->local_nls, cifs_sb->mnt_cifs_flags
     & CIFS_MOUNT_MAP_SPECIAL_CHR);
 else
  rc = SMBLegacyOpen(xid, tcon, full_path, disposition,
   desiredAccess, CREATE_NOT_DIR, pnetfid, poplock, buf,
   cifs_sb->local_nls, cifs_sb->mnt_cifs_flags
    & CIFS_MOUNT_MAP_SPECIAL_CHR);

 if (rc)
  goto out;

 if (tcon->unix_ext)
  rc = cifs_get_inode_info_unix(&inode, full_path, inode->i_sb,
           xid);
 else
  rc = cifs_get_inode_info(&inode, full_path, buf, inode->i_sb,
      xid, pnetfid);

out:
 kfree(buf);
 return rc;
}
