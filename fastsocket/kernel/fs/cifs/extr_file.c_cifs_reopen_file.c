
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int i_sb; int i_mapping; } ;
struct TYPE_7__ {int Capability; } ;
struct cifs_tcon {scalar_t__ unix_ext; TYPE_3__ fsUnixInfo; TYPE_2__* ses; } ;
struct cifs_sb_info {int mnt_cifs_flags; int local_nls; int mnt_file_mode; } ;
struct cifsInodeInfo {int dummy; } ;
struct cifsFileInfo {int invalidHandle; unsigned int f_flags; int fh_mutex; int netfid; TYPE_4__* dentry; int tlink; } ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_8__ {struct inode* d_inode; } ;
struct TYPE_6__ {int capabilities; TYPE_1__* server; } ;
struct TYPE_5__ {scalar_t__ oplocks; } ;


 int CAP_UNIX ;
 int CIFSSMBOpen (int,struct cifs_tcon*,char*,int,int,int,int *,int*,int *,int ,int) ;
 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 int CIFS_MOUNT_MAP_SPECIAL_CHR ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int CIFS_UNIX_POSIX_PATH_OPS_CAP ;
 int CREATE_NOT_DIR ;
 int CREATE_OPEN_BACKUP_INTENT ;
 int EACCES ;
 int ENOMEM ;
 int FILE_OPEN ;
 int FreeXid (int) ;
 int GetXid () ;
 unsigned int O_CREAT ;
 unsigned int O_EXCL ;
 unsigned int O_TRUNC ;
 int REQ_OPLOCK ;
 scalar_t__ backup_cred (struct cifs_sb_info*) ;
 char* build_path_from_dentry (TYPE_4__*) ;
 int cFYI (int,char*,...) ;
 int cifs_convert_flags (unsigned int) ;
 int cifs_get_inode_info (struct inode**,char*,int *,int ,int,int *) ;
 int cifs_get_inode_info_unix (struct inode**,char*,int ,int) ;
 int cifs_posix_open (char*,int *,int ,int ,unsigned int,int*,int *,int) ;
 int cifs_relock_file (struct cifsFileInfo*) ;
 int cifs_set_oplock_level (struct cifsInodeInfo*,int) ;
 int filemap_write_and_wait (int ) ;
 int kfree (char*) ;
 int le64_to_cpu (int ) ;
 int mapping_set_error (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cifs_tcon* tlink_tcon (int ) ;

__attribute__((used)) static int cifs_reopen_file(struct cifsFileInfo *pCifsFile, bool can_flush)
{
 int rc = -EACCES;
 int xid;
 __u32 oplock;
 struct cifs_sb_info *cifs_sb;
 struct cifs_tcon *tcon;
 struct cifsInodeInfo *pCifsInode;
 struct inode *inode;
 char *full_path = ((void*)0);
 int desiredAccess;
 int disposition = FILE_OPEN;
 int create_options = CREATE_NOT_DIR;
 __u16 netfid;

 xid = GetXid();
 mutex_lock(&pCifsFile->fh_mutex);
 if (!pCifsFile->invalidHandle) {
  mutex_unlock(&pCifsFile->fh_mutex);
  rc = 0;
  FreeXid(xid);
  return rc;
 }

 inode = pCifsFile->dentry->d_inode;
 cifs_sb = CIFS_SB(inode->i_sb);
 tcon = tlink_tcon(pCifsFile->tlink);





 full_path = build_path_from_dentry(pCifsFile->dentry);
 if (full_path == ((void*)0)) {
  rc = -ENOMEM;
  mutex_unlock(&pCifsFile->fh_mutex);
  FreeXid(xid);
  return rc;
 }

 cFYI(1, "inode = 0x%p file flags 0x%x for %s",
   inode, pCifsFile->f_flags, full_path);

 if (tcon->ses->server->oplocks)
  oplock = REQ_OPLOCK;
 else
  oplock = 0;

 if (tcon->unix_ext && (tcon->ses->capabilities & CAP_UNIX) &&
     (CIFS_UNIX_POSIX_PATH_OPS_CAP &
   le64_to_cpu(tcon->fsUnixInfo.Capability))) {





  unsigned int oflags = pCifsFile->f_flags &
      ~(O_CREAT | O_EXCL | O_TRUNC);

  rc = cifs_posix_open(full_path, ((void*)0), inode->i_sb,
    cifs_sb->mnt_file_mode ,
    oflags, &oplock, &netfid, xid);
  if (rc == 0) {
   cFYI(1, "posix reopen succeeded");
   goto reopen_success;
  }


 }

 desiredAccess = cifs_convert_flags(pCifsFile->f_flags);

 if (backup_cred(cifs_sb))
  create_options |= CREATE_OPEN_BACKUP_INTENT;







 rc = CIFSSMBOpen(xid, tcon, full_path, disposition, desiredAccess,
    create_options, &netfid, &oplock, ((void*)0),
    cifs_sb->local_nls, cifs_sb->mnt_cifs_flags &
    CIFS_MOUNT_MAP_SPECIAL_CHR);
 if (rc) {
  mutex_unlock(&pCifsFile->fh_mutex);
  cFYI(1, "cifs_open returned 0x%x", rc);
  cFYI(1, "oplock: %d", oplock);
  goto reopen_error_exit;
 }

reopen_success:
 pCifsFile->netfid = netfid;
 pCifsFile->invalidHandle = 0;
 mutex_unlock(&pCifsFile->fh_mutex);
 pCifsInode = CIFS_I(inode);

 if (can_flush) {
  rc = filemap_write_and_wait(inode->i_mapping);
  mapping_set_error(inode->i_mapping, rc);

  if (tcon->unix_ext)
   rc = cifs_get_inode_info_unix(&inode,
    full_path, inode->i_sb, xid);
  else
   rc = cifs_get_inode_info(&inode,
    full_path, ((void*)0), inode->i_sb,
    xid, ((void*)0));
 }






 cifs_set_oplock_level(pCifsInode, oplock);

 cifs_relock_file(pCifsFile);

reopen_error_exit:
 kfree(full_path);
 FreeXid(xid);
 return rc;
}
