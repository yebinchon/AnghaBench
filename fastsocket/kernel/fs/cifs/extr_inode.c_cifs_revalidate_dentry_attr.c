
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_3__ {int counter; } ;
struct inode {TYPE_1__ i_count; } ;
struct dentry {int d_time; struct super_block* d_sb; struct inode* d_inode; } ;
struct TYPE_4__ {scalar_t__ unix_ext; } ;


 int CIFS_SB (struct super_block*) ;
 int ENOENT ;
 int ENOMEM ;
 int FreeXid (int) ;
 int GetXid () ;
 char* build_path_from_dentry (struct dentry*) ;
 int cFYI (int,char*,char*,struct inode*,int ,struct dentry*,int ,int ) ;
 int cifs_get_inode_info (struct inode**,char*,int *,struct super_block*,int,int *) ;
 int cifs_get_inode_info_unix (struct inode**,char*,struct super_block*,int) ;
 int cifs_inode_needs_reval (struct inode*) ;
 TYPE_2__* cifs_sb_master_tcon (int ) ;
 int jiffies ;
 int kfree (char*) ;

int cifs_revalidate_dentry_attr(struct dentry *dentry)
{
 int xid;
 int rc = 0;
 struct inode *inode = dentry->d_inode;
 struct super_block *sb = dentry->d_sb;
 char *full_path = ((void*)0);

 if (inode == ((void*)0))
  return -ENOENT;

 if (!cifs_inode_needs_reval(inode))
  return rc;

 xid = GetXid();



 full_path = build_path_from_dentry(dentry);
 if (full_path == ((void*)0)) {
  rc = -ENOMEM;
  goto out;
 }

 cFYI(1, "Update attributes: %s inode 0x%p count %d dentry: 0x%p d_time "
   "%ld jiffies %ld", full_path, inode, inode->i_count.counter,
   dentry, dentry->d_time, jiffies);

 if (cifs_sb_master_tcon(CIFS_SB(sb))->unix_ext)
  rc = cifs_get_inode_info_unix(&inode, full_path, sb, xid);
 else
  rc = cifs_get_inode_info(&inode, full_path, ((void*)0), sb,
      xid, ((void*)0));

out:
 kfree(full_path);
 FreeXid(xid);
 return rc;
}
