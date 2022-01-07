
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* dentry; } ;
struct file {TYPE_2__ f_path; struct cifsFileInfo* private_data; } ;
struct dentry {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifsFileInfo {int netfid; int tlink; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_6__ {TYPE_1__ d_name; int d_sb; } ;


 int CIFSSMBFlush (int,struct cifs_tcon*,int ) ;
 int CIFS_MOUNT_NOSSYNC ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int FreeXid (int) ;
 int GetXid () ;
 int cFYI (int,char*,int ,int) ;
 struct cifs_tcon* tlink_tcon (int ) ;

int cifs_fsync(struct file *file, struct dentry *dentry, int datasync)
{
 int xid;
 int rc = 0;
 struct cifs_tcon *tcon;
 struct cifsFileInfo *smbfile = file->private_data;
 struct cifs_sb_info *cifs_sb = CIFS_SB(file->f_path.dentry->d_sb);

 xid = GetXid();

 cFYI(1, "Sync file - name: %s datasync: 0x%x",
  file->f_path.dentry->d_name.name, datasync);

 tcon = tlink_tcon(smbfile->tlink);
 if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NOSSYNC))
  rc = CIFSSMBFlush(xid, tcon, smbfile->netfid);

 FreeXid(xid);
 return rc;
}
