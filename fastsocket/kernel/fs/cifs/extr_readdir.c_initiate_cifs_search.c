
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct TYPE_5__ {TYPE_3__* dentry; } ;
struct file {int f_pos; TYPE_1__ f_path; struct cifsFileInfo* private_data; } ;
struct cifs_tcon {TYPE_2__* ses; scalar_t__ unix_ext; } ;
struct cifs_sb_info {int mnt_cifs_flags; int local_nls; } ;
struct TYPE_8__ {int endOfSearch; int info_level; } ;
struct cifsFileInfo {int invalidHandle; TYPE_4__ srch_inf; int netfid; struct tcon_link* tlink; } ;
struct TYPE_7__ {int d_sb; } ;
struct TYPE_6__ {int capabilities; } ;


 int CAP_NT_FIND ;
 int CAP_NT_SMBS ;
 int CIFSFindFirst (int const,struct cifs_tcon*,char*,int ,int *,TYPE_4__*,int,int ) ;
 int CIFS_DIR_SEP (struct cifs_sb_info*) ;
 int CIFS_MOUNT_MAP_SPECIAL_CHR ;
 int CIFS_MOUNT_SERVER_INUM ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 int SMB_FIND_FILE_DIRECTORY_INFO ;
 int SMB_FIND_FILE_ID_FULL_DIR_INFO ;
 int SMB_FIND_FILE_INFO_STANDARD ;
 int SMB_FIND_FILE_UNIX ;
 char* build_path_from_dentry (TYPE_3__*) ;
 int cFYI (int,char*,char*,int ) ;
 struct tcon_link* cifs_get_tlink (struct tcon_link*) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int kfree (char*) ;
 struct cifsFileInfo* kzalloc (int,int ) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

__attribute__((used)) static int initiate_cifs_search(const int xid, struct file *file)
{
 int rc = 0;
 char *full_path = ((void*)0);
 struct cifsFileInfo *cifsFile;
 struct cifs_sb_info *cifs_sb = CIFS_SB(file->f_path.dentry->d_sb);
 struct tcon_link *tlink = ((void*)0);
 struct cifs_tcon *pTcon;

 if (file->private_data == ((void*)0)) {
  tlink = cifs_sb_tlink(cifs_sb);
  if (IS_ERR(tlink))
   return PTR_ERR(tlink);

  cifsFile = kzalloc(sizeof(struct cifsFileInfo), GFP_KERNEL);
  if (cifsFile == ((void*)0)) {
   rc = -ENOMEM;
   goto error_exit;
  }
  file->private_data = cifsFile;
  cifsFile->tlink = cifs_get_tlink(tlink);
  pTcon = tlink_tcon(tlink);
 } else {
  cifsFile = file->private_data;
  pTcon = tlink_tcon(cifsFile->tlink);
 }

 cifsFile->invalidHandle = 1;
 cifsFile->srch_inf.endOfSearch = 0;

 full_path = build_path_from_dentry(file->f_path.dentry);
 if (full_path == ((void*)0)) {
  rc = -ENOMEM;
  goto error_exit;
 }

 cFYI(1, "Full path: %s start at: %lld", full_path, file->f_pos);

ffirst_retry:



 if (pTcon->unix_ext)
  cifsFile->srch_inf.info_level = SMB_FIND_FILE_UNIX;
 else if ((pTcon->ses->capabilities &
   (CAP_NT_SMBS | CAP_NT_FIND)) == 0) {
  cifsFile->srch_inf.info_level = SMB_FIND_FILE_INFO_STANDARD;
 } else if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM) {
  cifsFile->srch_inf.info_level = SMB_FIND_FILE_ID_FULL_DIR_INFO;
 } else {
  cifsFile->srch_inf.info_level = SMB_FIND_FILE_DIRECTORY_INFO;
 }

 rc = CIFSFindFirst(xid, pTcon, full_path, cifs_sb->local_nls,
  &cifsFile->netfid, &cifsFile->srch_inf,
  cifs_sb->mnt_cifs_flags &
   CIFS_MOUNT_MAP_SPECIAL_CHR, CIFS_DIR_SEP(cifs_sb));
 if (rc == 0)
  cifsFile->invalidHandle = 0;



 else if ((rc == -EOPNOTSUPP) &&
  (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM)) {
  cifs_sb->mnt_cifs_flags &= ~CIFS_MOUNT_SERVER_INUM;
  goto ffirst_retry;
 }
error_exit:
 kfree(full_path);
 cifs_put_tlink(tlink);
 return rc;
}
