
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
typedef int ssize_t ;
struct TYPE_2__ {struct super_block* i_sb; } ;


 int CIFSSMBQAllEAs (int,struct cifs_tcon*,char*,int *,char*,size_t,int ,int) ;
 int CIFS_MOUNT_MAP_SPECIAL_CHR ;
 int CIFS_MOUNT_NO_XATTR ;
 struct cifs_sb_info* CIFS_SB (struct super_block*) ;
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
 int kfree (char*) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

ssize_t cifs_listxattr(struct dentry *direntry, char *data, size_t buf_size)
{
 ssize_t rc = -EOPNOTSUPP;
 return rc;
}
