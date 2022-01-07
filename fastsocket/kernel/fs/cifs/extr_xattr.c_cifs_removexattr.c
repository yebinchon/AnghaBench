
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct super_block {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; int local_nls; } ;
typedef int __u16 ;
struct TYPE_2__ {struct super_block* i_sb; } ;


 int CIFSSMBSetEA (int,struct cifs_tcon*,char*,char const*,int *,int ,int ,int) ;
 int CIFS_MOUNT_MAP_SPECIAL_CHR ;
 int CIFS_MOUNT_NO_XATTR ;
 struct cifs_sb_info* CIFS_SB (struct super_block*) ;
 int CIFS_XATTR_OS2_PREFIX ;
 int CIFS_XATTR_USER_PREFIX ;
 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int FreeXid (int) ;
 int GetXid () ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 char* build_path_from_dentry (struct dentry*) ;
 int cFYI (int,char*,...) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int kfree (char*) ;
 scalar_t__ strncmp (char const*,int ,int) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

int cifs_removexattr(struct dentry *direntry, const char *ea_name)
{
 int rc = -EOPNOTSUPP;
 return rc;
}
