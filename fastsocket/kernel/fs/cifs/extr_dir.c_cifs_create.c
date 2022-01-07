
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct TYPE_10__ {TYPE_2__* file; } ;
struct TYPE_11__ {TYPE_3__ open; } ;
struct nameidata {int flags; TYPE_4__ intent; } ;
struct inode {int i_mode; scalar_t__ i_gid; scalar_t__ i_uid; int i_sb; } ;
typedef struct tcon_link file ;
struct dentry {int dummy; } ;
struct cifs_unix_set_info_args {int mode; void* ctime; void* atime; void* mtime; void* gid; void* uid; int device; } ;
struct TYPE_12__ {int Capability; } ;
struct cifs_tcon {scalar_t__ unix_ext; TYPE_6__* ses; TYPE_5__ fsUnixInfo; } ;
struct cifs_sb_info {int mnt_cifs_flags; int local_nls; } ;
struct cifsFileInfo {int dummy; } ;
typedef void* __u64 ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_14__ {int tgid; } ;
struct TYPE_13__ {int capabilities; TYPE_1__* server; } ;
struct TYPE_9__ {int f_flags; } ;
struct TYPE_8__ {scalar_t__ oplocks; } ;
typedef char FILE_ALL_INFO ;


 int CAP_NT_SMBS ;
 int CAP_UNIX ;
 int CIFSSMBClose (int,struct cifs_tcon*,int ) ;
 int CIFSSMBOpen (int,struct cifs_tcon*,char*,int,int,int,int *,int*,char*,int ,int) ;
 int CIFSSMBUnixSetFileInfo (int,struct cifs_tcon*,struct cifs_unix_set_info_args*,int ,int ) ;
 int CIFS_CREATE_ACTION ;
 int CIFS_MOUNT_DYNPERM ;
 int CIFS_MOUNT_MAP_SPECIAL_CHR ;
 int CIFS_MOUNT_SET_UID ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int CIFS_UNIX_POSIX_PATH_OPS_CAP ;
 int CREATE_NOT_DIR ;
 int CREATE_OPEN_BACKUP_INTENT ;
 int CREATE_OPTION_READONLY ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EREMOTE ;
 int FILE_CREATE ;
 int FILE_OPEN_IF ;
 int FILE_OVERWRITE_IF ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int FreeXid (int) ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GFP_KERNEL ;
 int GetXid () ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int LOOKUP_OPEN ;
 void* NO_CHANGE_64 ;
 int OPEN_FMODE (int) ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_TRUNC ;
 int PTR_ERR (struct tcon_link*) ;
 int REQ_OPLOCK ;
 int SMBLegacyOpen (int,struct cifs_tcon*,char*,int,int,int,int *,int*,char*,int ,int) ;
 int S_ISGID ;
 int S_IWUGO ;
 scalar_t__ backup_cred (struct cifs_sb_info*) ;
 char* build_path_from_dentry (struct dentry*) ;
 int cFYI (int,char*,...) ;
 int cifs_get_inode_info (struct inode**,char*,char*,int ,int,int *) ;
 int cifs_get_inode_info_unix (struct inode**,char*,int ,int) ;
 struct cifsFileInfo* cifs_new_fileinfo (int ,struct tcon_link*,struct tcon_link*,int) ;
 int cifs_posix_open (char*,struct inode**,int ,int,int,int*,int *,int) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 TYPE_7__* current ;
 scalar_t__ current_fsgid () ;
 scalar_t__ current_fsuid () ;
 int fput (struct tcon_link*) ;
 int generic_file_open ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int le64_to_cpu (int ) ;
 struct tcon_link* lookup_instantiate_filp (struct nameidata*,struct dentry*,int ) ;
 int setup_cifs_dentry (struct cifs_tcon*,struct dentry*,struct inode*) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

int
cifs_create(struct inode *inode, struct dentry *direntry, int mode,
  struct nameidata *nd)
{
 int rc = -ENOENT;
 int xid;
 int create_options = CREATE_NOT_DIR;
 __u32 oplock = 0;
 int oflags;







 int desiredAccess = GENERIC_READ | GENERIC_WRITE;
 __u16 fileHandle;
 struct cifs_sb_info *cifs_sb;
 struct tcon_link *tlink;
 struct cifs_tcon *tcon;
 char *full_path = ((void*)0);
 FILE_ALL_INFO *buf = ((void*)0);
 struct inode *newinode = ((void*)0);
 int disposition = FILE_OVERWRITE_IF;

 xid = GetXid();

 cifs_sb = CIFS_SB(inode->i_sb);
 tlink = cifs_sb_tlink(cifs_sb);
 if (IS_ERR(tlink)) {
  FreeXid(xid);
  return PTR_ERR(tlink);
 }
 tcon = tlink_tcon(tlink);

 if (tcon->ses->server->oplocks)
  oplock = REQ_OPLOCK;

 if (nd && (nd->flags & LOOKUP_OPEN))
  oflags = nd->intent.open.file->f_flags;
 else
  oflags = O_RDONLY | O_CREAT;

 full_path = build_path_from_dentry(direntry);
 if (full_path == ((void*)0)) {
  rc = -ENOMEM;
  goto cifs_create_out;
 }

 if (tcon->unix_ext && (tcon->ses->capabilities & CAP_UNIX) &&
     (CIFS_UNIX_POSIX_PATH_OPS_CAP &
   le64_to_cpu(tcon->fsUnixInfo.Capability))) {
  rc = cifs_posix_open(full_path, &newinode,
   inode->i_sb, mode, oflags, &oplock, &fileHandle, xid);





  if (rc == 0) {
   if (newinode == ((void*)0))
    goto cifs_create_get_file_info;
   else
    goto cifs_create_set_dentry;
  } else if ((rc != -EIO) && (rc != -EREMOTE) &&
    (rc != -EOPNOTSUPP) && (rc != -EINVAL))
   goto cifs_create_out;




 }

 if (nd && (nd->flags & LOOKUP_OPEN)) {


  desiredAccess = 0;
  if (OPEN_FMODE(oflags) & FMODE_READ)
   desiredAccess |= GENERIC_READ;
  if (OPEN_FMODE(oflags) & FMODE_WRITE)
   desiredAccess |= GENERIC_WRITE;

  if ((oflags & (O_CREAT | O_EXCL)) == (O_CREAT | O_EXCL))
   disposition = FILE_CREATE;
  else if ((oflags & (O_CREAT | O_TRUNC)) == (O_CREAT | O_TRUNC))
   disposition = FILE_OVERWRITE_IF;
  else if ((oflags & O_CREAT) == O_CREAT)
   disposition = FILE_OPEN_IF;
  else
   cFYI(1, "Create flag not set in create function");
 }




 buf = kmalloc(sizeof(FILE_ALL_INFO), GFP_KERNEL);
 if (buf == ((void*)0)) {
  rc = -ENOMEM;
  goto cifs_create_out;
 }





 if (!tcon->unix_ext && (mode & S_IWUGO) == 0)
  create_options |= CREATE_OPTION_READONLY;

 if (backup_cred(cifs_sb))
  create_options |= CREATE_OPEN_BACKUP_INTENT;

 if (tcon->ses->capabilities & CAP_NT_SMBS)
  rc = CIFSSMBOpen(xid, tcon, full_path, disposition,
    desiredAccess, create_options,
    &fileHandle, &oplock, buf, cifs_sb->local_nls,
    cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MAP_SPECIAL_CHR);
 else
  rc = -EIO;

 if (rc == -EIO) {

  rc = SMBLegacyOpen(xid, tcon, full_path, disposition,
   desiredAccess, create_options,
   &fileHandle, &oplock, buf, cifs_sb->local_nls,
   cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MAP_SPECIAL_CHR);
 }
 if (rc) {
  cFYI(1, "cifs_create returned 0x%x", rc);
  goto cifs_create_out;
 }



 if ((tcon->unix_ext) && (oplock & CIFS_CREATE_ACTION)) {
  struct cifs_unix_set_info_args args = {
    .mode = mode,
    .ctime = NO_CHANGE_64,
    .atime = NO_CHANGE_64,
    .mtime = NO_CHANGE_64,
    .device = 0,
  };

  if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SET_UID) {
   args.uid = (__u64) current_fsuid();
   if (inode->i_mode & S_ISGID)
    args.gid = (__u64) inode->i_gid;
   else
    args.gid = (__u64) current_fsgid();
  } else {
   args.uid = NO_CHANGE_64;
   args.gid = NO_CHANGE_64;
  }
  CIFSSMBUnixSetFileInfo(xid, tcon, &args, fileHandle,
     current->tgid);
 } else {





 }

cifs_create_get_file_info:

 if (tcon->unix_ext)
  rc = cifs_get_inode_info_unix(&newinode, full_path,
           inode->i_sb, xid);
 else {
  rc = cifs_get_inode_info(&newinode, full_path, buf,
      inode->i_sb, xid, &fileHandle);
  if (newinode) {
   if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_DYNPERM)
    newinode->i_mode = mode;
   if ((oplock & CIFS_CREATE_ACTION) &&
       (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SET_UID)) {
    newinode->i_uid = current_fsuid();
    if (inode->i_mode & S_ISGID)
     newinode->i_gid = inode->i_gid;
    else
     newinode->i_gid = current_fsgid();
   }
  }
 }

cifs_create_set_dentry:
 if (rc == 0)
  setup_cifs_dentry(tcon, direntry, newinode);
 else
  cFYI(1, "Create worked, get_inode_info failed rc = %d", rc);

 if (newinode && nd && (nd->flags & LOOKUP_OPEN)) {
  struct cifsFileInfo *pfile_info;
  struct file *filp;

  filp = lookup_instantiate_filp(nd, direntry, generic_file_open);
  if (IS_ERR(filp)) {
   rc = PTR_ERR(filp);
   CIFSSMBClose(xid, tcon, fileHandle);
   goto cifs_create_out;
  }

  pfile_info = cifs_new_fileinfo(fileHandle, filp, tlink, oplock);
  if (pfile_info == ((void*)0)) {
   fput(filp);
   CIFSSMBClose(xid, tcon, fileHandle);
   rc = -ENOMEM;
  }
 } else {
  CIFSSMBClose(xid, tcon, fileHandle);
 }

cifs_create_out:
 kfree(buf);
 kfree(full_path);
 cifs_put_tlink(tlink);
 FreeXid(xid);
 return rc;
}
