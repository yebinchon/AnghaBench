
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct iattr {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct cifs_tcon {scalar_t__ unix_ext; } ;
struct cifs_sb_info {int dummy; } ;


 struct cifs_sb_info* CIFS_SB (int ) ;
 struct cifs_tcon* cifs_sb_master_tcon (struct cifs_sb_info*) ;
 int cifs_setattr_nounix (struct dentry*,struct iattr*) ;
 int cifs_setattr_unix (struct dentry*,struct iattr*) ;

int
cifs_setattr(struct dentry *direntry, struct iattr *attrs)
{
 struct inode *inode = direntry->d_inode;
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
 struct cifs_tcon *pTcon = cifs_sb_master_tcon(cifs_sb);

 if (pTcon->unix_ext)
  return cifs_setattr_unix(direntry, attrs);

 return cifs_setattr_nounix(direntry, attrs);


}
