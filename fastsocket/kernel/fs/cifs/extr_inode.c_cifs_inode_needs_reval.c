
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_nlink; int i_mode; int i_sb; } ;
struct cifs_sb_info {scalar_t__ actimeo; int mnt_cifs_flags; } ;
struct cifsInodeInfo {scalar_t__ time; scalar_t__ clientCanCacheRead; } ;


 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 int CIFS_MOUNT_SERVER_INUM ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int jiffies ;
 int lookupCacheEnabled ;
 int time_in_range (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
cifs_inode_needs_reval(struct inode *inode)
{
 struct cifsInodeInfo *cifs_i = CIFS_I(inode);
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);

 if (cifs_i->clientCanCacheRead)
  return 0;

 if (!lookupCacheEnabled)
  return 1;

 if (cifs_i->time == 0)
  return 1;

 if (!time_in_range(jiffies, cifs_i->time,
    cifs_i->time + cifs_sb->actimeo))
  return 1;


 if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM) &&
     S_ISREG(inode->i_mode) && inode->i_nlink != 1)
  return 1;

 return 0;
}
