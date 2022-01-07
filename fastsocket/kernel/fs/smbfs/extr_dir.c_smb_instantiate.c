
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int generation; } ;
struct smb_inode_info {int open; int access; int fileid; } ;
struct smb_fattr {int f_ino; } ;
struct inode {int dummy; } ;
struct dentry {int d_sb; } ;
typedef int __u16 ;


 int DENTRY_PATH (struct dentry*) ;
 int EACCES ;
 int PARANOIA (char*,int ,int,int ) ;
 struct smb_inode_info* SMB_I (struct inode*) ;
 int SMB_O_RDWR ;
 int VERBOSE (char*,int ,int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int iunique (int ,int) ;
 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 int smb_close_fileid (struct dentry*,int ) ;
 struct inode* smb_iget (int ,struct smb_fattr*) ;
 int smb_proc_getattr (struct dentry*,struct smb_fattr*) ;
 int smb_renew_times (struct dentry*) ;

__attribute__((used)) static int
smb_instantiate(struct dentry *dentry, __u16 fileid, int have_id)
{
 struct smb_sb_info *server = server_from_dentry(dentry);
 struct inode *inode;
 int error;
 struct smb_fattr fattr;

 VERBOSE("file %s/%s, fileid=%u\n", DENTRY_PATH(dentry), fileid);

 error = smb_proc_getattr(dentry, &fattr);
 if (error)
  goto out_close;

 smb_renew_times(dentry);
 fattr.f_ino = iunique(dentry->d_sb, 2);
 inode = smb_iget(dentry->d_sb, &fattr);
 if (!inode)
  goto out_no_inode;

 if (have_id) {
  struct smb_inode_info *ei = SMB_I(inode);
  ei->fileid = fileid;
  ei->access = SMB_O_RDWR;
  ei->open = server->generation;
 }
 d_instantiate(dentry, inode);
out:
 return error;

out_no_inode:
 error = -EACCES;
out_close:
 if (have_id) {
  PARANOIA("%s/%s failed, error=%d, closing %u\n",
    DENTRY_PATH(dentry), error, fileid);
  smb_close_fileid(dentry, fileid);
 }
 goto out;
}
