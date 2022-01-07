
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_nlink; int i_gid; int i_uid; int * i_fop; int * i_op; int i_mode; } ;
struct cifs_tcon {scalar_t__ ipc; int resource_id; scalar_t__ unix_ext; } ;
struct cifs_sb_info {int mnt_gid; int mnt_uid; } ;
struct TYPE_2__ {int uniqueid; } ;


 TYPE_1__* CIFS_I (struct inode*) ;
 struct cifs_sb_info* CIFS_SB (struct super_block*) ;
 long ENOMEM ;
 struct inode* ERR_PTR (long) ;
 int GetXid () ;
 int S_IFDIR ;
 int _FreeXid (int) ;
 int cFYI (int,char*) ;
 char* cifs_build_path_to_root (struct cifs_sb_info*,struct cifs_tcon*) ;
 long cifs_get_inode_info (struct inode**,char*,int *,struct super_block*,int,int *) ;
 long cifs_get_inode_info_unix (struct inode**,char*,struct super_block*,int) ;
 int cifs_ipc_inode_ops ;
 struct cifs_tcon* cifs_sb_master_tcon (struct cifs_sb_info*) ;
 int iget_failed (struct inode*) ;
 int kfree (char*) ;
 int simple_dir_operations ;

struct inode *cifs_root_iget(struct super_block *sb)
{
 int xid;
 struct cifs_sb_info *cifs_sb = CIFS_SB(sb);
 struct inode *inode = ((void*)0);
 long rc;
 char *full_path;
 struct cifs_tcon *tcon = cifs_sb_master_tcon(cifs_sb);

 full_path = cifs_build_path_to_root(cifs_sb, tcon);
 if (full_path == ((void*)0))
  return ERR_PTR(-ENOMEM);

 xid = GetXid();
 if (tcon->unix_ext)
  rc = cifs_get_inode_info_unix(&inode, full_path, sb, xid);
 else
  rc = cifs_get_inode_info(&inode, full_path, ((void*)0), sb,
      xid, ((void*)0));

 if (!inode) {
  inode = ERR_PTR(rc);
  goto out;
 }






 if (rc && tcon->ipc) {
  cFYI(1, "ipc connection - fake read inode");
  inode->i_mode |= S_IFDIR;
  inode->i_nlink = 2;
  inode->i_op = &cifs_ipc_inode_ops;
  inode->i_fop = &simple_dir_operations;
  inode->i_uid = cifs_sb->mnt_uid;
  inode->i_gid = cifs_sb->mnt_gid;
 } else if (rc) {
  iget_failed(inode);
  inode = ERR_PTR(rc);
 }

out:
 kfree(full_path);



 _FreeXid(xid);
 return inode;
}
