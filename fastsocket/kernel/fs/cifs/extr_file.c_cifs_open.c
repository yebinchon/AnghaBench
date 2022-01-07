
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct inode {int i_mode; int i_sb; } ;
struct TYPE_6__ {TYPE_5__* dentry; } ;
struct file {int f_flags; TYPE_1__ f_path; } ;
struct cifs_unix_set_info_args {int device; int mtime; int atime; int ctime; int gid; int uid; int mode; } ;
struct TYPE_8__ {int Capability; } ;
struct cifs_tcon {int broken_posix_open; scalar_t__ unix_ext; TYPE_4__* ses; TYPE_3__ fsUnixInfo; } ;
struct cifs_sb_info {int mnt_file_mode; } ;
struct cifsInodeInfo {int dummy; } ;
struct cifsFileInfo {int pid; } ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_10__ {int d_inode; } ;
struct TYPE_9__ {int capabilities; scalar_t__ serverNOS; int serverName; TYPE_2__* server; } ;
struct TYPE_7__ {scalar_t__ oplocks; } ;


 int CAP_UNIX ;
 int CIFSSMBClose (int,struct cifs_tcon*,int ) ;
 int CIFSSMBUnixSetFileInfo (int,struct cifs_tcon*,struct cifs_unix_set_info_args*,int ,int ) ;
 int CIFS_CREATE_ACTION ;
 struct cifsInodeInfo* CIFS_I (int ) ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int CIFS_UNIX_POSIX_PATH_OPS_CAP ;
 int EACCES ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EREMOTE ;
 int FreeXid (int) ;
 int GetXid () ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int NO_CHANGE_64 ;
 int PTR_ERR (struct tcon_link*) ;
 int REQ_OPLOCK ;
 char* build_path_from_dentry (TYPE_5__*) ;
 int cERROR (int,char*,int ,scalar_t__) ;
 int cFYI (int,char*,...) ;
 int cifs_fscache_set_inode_cookie (struct inode*,struct file*) ;
 struct cifsFileInfo* cifs_new_fileinfo (int ,struct file*,struct tcon_link*,int) ;
 int cifs_nt_open (char*,struct inode*,struct cifs_sb_info*,struct cifs_tcon*,int ,int*,int *,int) ;
 int cifs_posix_open (char*,struct inode**,int ,int ,int ,int*,int *,int) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int kfree (char*) ;
 int le64_to_cpu (int ) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

int cifs_open(struct inode *inode, struct file *file)
{
 int rc = -EACCES;
 int xid;
 __u32 oplock;
 struct cifs_sb_info *cifs_sb;
 struct cifs_tcon *tcon;
 struct tcon_link *tlink;
 struct cifsFileInfo *pCifsFile = ((void*)0);
 struct cifsInodeInfo *pCifsInode;
 char *full_path = ((void*)0);
 bool posix_open_ok = 0;
 __u16 netfid;

 xid = GetXid();

 cifs_sb = CIFS_SB(inode->i_sb);
 tlink = cifs_sb_tlink(cifs_sb);
 if (IS_ERR(tlink)) {
  FreeXid(xid);
  return PTR_ERR(tlink);
 }
 tcon = tlink_tcon(tlink);

 pCifsInode = CIFS_I(file->f_path.dentry->d_inode);

 full_path = build_path_from_dentry(file->f_path.dentry);
 if (full_path == ((void*)0)) {
  rc = -ENOMEM;
  goto out;
 }

 cFYI(1, "inode = 0x%p file flags are 0x%x for %s",
   inode, file->f_flags, full_path);

 if (tcon->ses->server->oplocks)
  oplock = REQ_OPLOCK;
 else
  oplock = 0;

 if (!tcon->broken_posix_open && tcon->unix_ext &&
     (tcon->ses->capabilities & CAP_UNIX) &&
     (CIFS_UNIX_POSIX_PATH_OPS_CAP &
   le64_to_cpu(tcon->fsUnixInfo.Capability))) {

  rc = cifs_posix_open(full_path, &inode, inode->i_sb,
    cifs_sb->mnt_file_mode ,
    file->f_flags, &oplock, &netfid, xid);
  if (rc == 0) {
   cFYI(1, "posix open succeeded");
   posix_open_ok = 1;
  } else if ((rc == -EINVAL) || (rc == -EOPNOTSUPP)) {
   if (tcon->ses->serverNOS)
    cERROR(1, "server %s of type %s returned"
        " unexpected error on SMB posix open"
        ", disabling posix open support."
        " Check if server update available.",
        tcon->ses->serverName,
        tcon->ses->serverNOS);
   tcon->broken_posix_open = 1;
  } else if ((rc != -EIO) && (rc != -EREMOTE) &&
    (rc != -EOPNOTSUPP))
   goto out;


 }

 if (!posix_open_ok) {
  rc = cifs_nt_open(full_path, inode, cifs_sb, tcon,
      file->f_flags, &oplock, &netfid, xid);
  if (rc)
   goto out;
 }

 pCifsFile = cifs_new_fileinfo(netfid, file, tlink, oplock);
 if (pCifsFile == ((void*)0)) {
  CIFSSMBClose(xid, tcon, netfid);
  rc = -ENOMEM;
  goto out;
 }

 cifs_fscache_set_inode_cookie(inode, file);

 if ((oplock & CIFS_CREATE_ACTION) && !posix_open_ok && tcon->unix_ext) {


  struct cifs_unix_set_info_args args = {
   .mode = inode->i_mode,
   .uid = NO_CHANGE_64,
   .gid = NO_CHANGE_64,
   .ctime = NO_CHANGE_64,
   .atime = NO_CHANGE_64,
   .mtime = NO_CHANGE_64,
   .device = 0,
  };
  CIFSSMBUnixSetFileInfo(xid, tcon, &args, netfid,
     pCifsFile->pid);
 }

out:
 kfree(full_path);
 FreeXid(xid);
 cifs_put_tlink(tlink);
 return rc;
}
