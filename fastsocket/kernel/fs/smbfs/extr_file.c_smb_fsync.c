
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_sb_info {int dummy; } ;
struct file {int dummy; } ;
struct dentry {int d_inode; } ;
struct TYPE_2__ {int fileid; } ;


 int DENTRY_PATH (struct dentry*) ;
 TYPE_1__* SMB_I (int ) ;
 int VERBOSE (char*,int ) ;
 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 int smb_proc_flush (struct smb_sb_info*,int ) ;

__attribute__((used)) static int
smb_fsync(struct file *file, struct dentry * dentry, int datasync)
{
 struct smb_sb_info *server = server_from_dentry(dentry);
 int result;

 VERBOSE("sync file %s/%s\n", DENTRY_PATH(dentry));
 result = smb_proc_flush(server, SMB_I(dentry->d_inode)->fileid);
 return result;
}
