
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct qstr {char* name; int len; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {int f_pos; int f_dentry; TYPE_2__ f_path; struct cifsFileInfo* private_data; } ;
struct dentry {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifs_fattr {int cf_dtype; scalar_t__ cf_uniqueid; int cf_flags; } ;
struct TYPE_7__ {scalar_t__ info_level; int unicode; } ;
struct cifsFileInfo {TYPE_3__ srch_inf; } ;
typedef int ino_t ;
typedef int (* filldir_t ) (void*,char*,int ,int ,int ,int ) ;
struct TYPE_8__ {int basic; } ;
struct TYPE_5__ {struct super_block* d_sb; } ;
typedef int FIND_FILE_STANDARD_INFO ;
typedef TYPE_4__ FILE_UNIX_INFO ;
typedef int FILE_DIRECTORY_INFO ;


 scalar_t__ CIFSCouldBeMFSymlink (struct cifs_fattr*) ;
 int CIFS_FATTR_NEED_REVAL ;
 int CIFS_MOUNT_MF_SYMLINKS ;
 int CIFS_MOUNT_SERVER_INUM ;
 struct cifs_sb_info* CIFS_SB (struct super_block*) ;
 int EINVAL ;
 int ENOENT ;
 int EOVERFLOW ;
 int ROOT_I ;
 scalar_t__ SMB_FIND_FILE_INFO_STANDARD ;
 scalar_t__ SMB_FIND_FILE_UNIX ;
 int cFYI (int,char*,int) ;
 int cifs_autodisable_serverino (struct cifs_sb_info*) ;
 int cifs_dir_info_to_fattr (struct cifs_fattr*,int *,struct cifs_sb_info*) ;
 int cifs_entry_is_dot (char*,struct cifsFileInfo*) ;
 int cifs_get_name_from_search_buf (struct qstr*,char*,scalar_t__,int ,struct cifs_sb_info*,unsigned int,scalar_t__*) ;
 struct dentry* cifs_readdir_lookup (int ,struct qstr*,struct cifs_fattr*) ;
 int cifs_std_info_to_fattr (struct cifs_fattr*,int *,struct cifs_sb_info*) ;
 int cifs_uniqueid_to_ino_t (scalar_t__) ;
 int cifs_unix_basic_to_fattr (struct cifs_fattr*,int *,struct cifs_sb_info*) ;
 int dput (struct dentry*) ;
 scalar_t__ iunique (struct super_block*,int ) ;

__attribute__((used)) static int cifs_filldir(char *pfindEntry, struct file *file, filldir_t filldir,
   void *direntry, char *scratch_buf, unsigned int max_len)
{
 int rc = 0;
 struct qstr qstring;
 struct cifsFileInfo *pCifsF;
 u64 inum;
 ino_t ino;
 struct super_block *sb;
 struct cifs_sb_info *cifs_sb;
 struct dentry *tmp_dentry;
 struct cifs_fattr fattr;




 if ((direntry == ((void*)0)) || (file == ((void*)0)))
  return -EINVAL;

 pCifsF = file->private_data;

 if ((scratch_buf == ((void*)0)) || (pfindEntry == ((void*)0)) || (pCifsF == ((void*)0)))
  return -ENOENT;

 rc = cifs_entry_is_dot(pfindEntry, pCifsF);

 if (rc != 0)
  return 0;

 sb = file->f_path.dentry->d_sb;
 cifs_sb = CIFS_SB(sb);

 qstring.name = scratch_buf;
 rc = cifs_get_name_from_search_buf(&qstring, pfindEntry,
   pCifsF->srch_inf.info_level,
   pCifsF->srch_inf.unicode, cifs_sb,
   max_len, &inum );

 if (rc)
  return rc;

 if (pCifsF->srch_inf.info_level == SMB_FIND_FILE_UNIX)
  cifs_unix_basic_to_fattr(&fattr,
     &((FILE_UNIX_INFO *) pfindEntry)->basic,
     cifs_sb);
 else if (pCifsF->srch_inf.info_level == SMB_FIND_FILE_INFO_STANDARD)
  cifs_std_info_to_fattr(&fattr, (FIND_FILE_STANDARD_INFO *)
     pfindEntry, cifs_sb);
 else
  cifs_dir_info_to_fattr(&fattr, (FILE_DIRECTORY_INFO *)
     pfindEntry, cifs_sb);

 if (inum && (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM)) {
  fattr.cf_uniqueid = inum;
 } else {
  fattr.cf_uniqueid = iunique(sb, ROOT_I);
  cifs_autodisable_serverino(cifs_sb);
 }

 if ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MF_SYMLINKS) &&
     CIFSCouldBeMFSymlink(&fattr))





  fattr.cf_flags |= CIFS_FATTR_NEED_REVAL;

 ino = cifs_uniqueid_to_ino_t(fattr.cf_uniqueid);
 tmp_dentry = cifs_readdir_lookup(file->f_dentry, &qstring, &fattr);

 rc = filldir(direntry, qstring.name, qstring.len, file->f_pos,
       ino, fattr.cf_dtype);
 if (rc) {
  cFYI(1, "filldir rc = %d", rc);
  rc = -EOVERFLOW;
 }
 dput(tmp_dentry);
 return rc;
}
