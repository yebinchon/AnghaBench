
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct smb_hdr {int dummy; } ;
struct TYPE_11__ {TYPE_4__* dentry; } ;
struct file {int f_pos; struct cifsFileInfo* private_data; TYPE_5__ f_path; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct TYPE_12__ {char* ntwrk_buf_start; int index_of_last_entry; int info_level; int emptyDir; int endOfSearch; } ;
struct cifsFileInfo {TYPE_6__ srch_inf; int tlink; } ;
typedef int (* filldir_t ) (void*,char*,int,int,int ,int ) ;
struct TYPE_10__ {TYPE_3__* d_parent; TYPE_1__* d_inode; int d_sb; } ;
struct TYPE_9__ {TYPE_2__* d_inode; } ;
struct TYPE_8__ {int i_ino; } ;
struct TYPE_7__ {int i_ino; } ;


 struct cifs_sb_info* CIFS_SB (int ) ;
 int DT_DIR ;
 int EINVAL ;
 int ENOMEM ;
 int EOVERFLOW ;
 int FreeXid (int) ;
 int GFP_KERNEL ;
 int GetXid () ;
 int UNICODE_NAME_MAX ;
 int cERROR (int,char*,...) ;
 int cFYI (int,char*,...) ;
 int cifs_filldir (char*,struct file*,int (*) (void*,char*,int,int,int ,int ),void*,char*,unsigned int) ;
 int cifs_save_resume_key (char*,struct cifsFileInfo*) ;
 int find_cifs_entry (int,struct cifs_tcon*,struct file*,char**,int*) ;
 int initiate_cifs_search (int,struct file*) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 char* nxt_dir_entry (char*,char*,int ) ;
 unsigned int smbCalcSize (struct smb_hdr*) ;
 struct cifs_tcon* tlink_tcon (int ) ;

int cifs_readdir(struct file *file, void *direntry, filldir_t filldir)
{
 int rc = 0;
 int xid, i;
 struct cifs_sb_info *cifs_sb;
 struct cifs_tcon *pTcon;
 struct cifsFileInfo *cifsFile = ((void*)0);
 char *current_entry;
 int num_to_fill = 0;
 char *tmp_buf = ((void*)0);
 char *end_of_smb;
 unsigned int max_len;

 xid = GetXid();

 cifs_sb = CIFS_SB(file->f_path.dentry->d_sb);





 if (file->private_data == ((void*)0)) {
  rc = initiate_cifs_search(xid, file);
  cFYI(1, "initiate cifs search rc %d", rc);
  if (rc)
   goto rddir2_exit;
 }

 switch ((int) file->f_pos) {
 case 0:
  if (filldir(direntry, ".", 1, file->f_pos,
       file->f_path.dentry->d_inode->i_ino, DT_DIR) < 0) {
   cERROR(1, "Filldir for current dir failed");
   rc = -ENOMEM;
   break;
  }
  file->f_pos++;
 case 1:
  if (filldir(direntry, "..", 2, file->f_pos,
       file->f_path.dentry->d_parent->d_inode->i_ino, DT_DIR) < 0) {
   cERROR(1, "Filldir for parent dir failed");
   rc = -ENOMEM;
   break;
  }
  file->f_pos++;
 default:





  if (file->private_data == ((void*)0)) {
   rc = -EINVAL;
   FreeXid(xid);
   return rc;
  }
  cifsFile = file->private_data;
  if (cifsFile->srch_inf.endOfSearch) {
   if (cifsFile->srch_inf.emptyDir) {
    cFYI(1, "End of search, empty dir");
    rc = 0;
    break;
   }
  }




  pTcon = tlink_tcon(cifsFile->tlink);
  rc = find_cifs_entry(xid, pTcon, file,
    &current_entry, &num_to_fill);
  if (rc) {
   cFYI(1, "fce error %d", rc);
   goto rddir2_exit;
  } else if (current_entry != ((void*)0)) {
   cFYI(1, "entry %lld found", file->f_pos);
  } else {
   cFYI(1, "could not find entry");
   goto rddir2_exit;
  }
  cFYI(1, "loop through %d times filling dir for net buf %p",
   num_to_fill, cifsFile->srch_inf.ntwrk_buf_start);
  max_len = smbCalcSize((struct smb_hdr *)
    cifsFile->srch_inf.ntwrk_buf_start);
  end_of_smb = cifsFile->srch_inf.ntwrk_buf_start + max_len;

  tmp_buf = kmalloc(UNICODE_NAME_MAX, GFP_KERNEL);
  if (tmp_buf == ((void*)0)) {
   rc = -ENOMEM;
   break;
  }

  for (i = 0; (i < num_to_fill) && (rc == 0); i++) {
   if (current_entry == ((void*)0)) {

    cERROR(1, "past SMB end,  num to fill %d i %d",
       num_to_fill, i);
    break;
   }


   rc = cifs_filldir(current_entry, file,
     filldir, direntry, tmp_buf, max_len);
   if (rc == -EOVERFLOW) {
    rc = 0;
    break;
   }

   file->f_pos++;
   if (file->f_pos ==
    cifsFile->srch_inf.index_of_last_entry) {
    cFYI(1, "last entry in buf at pos %lld %s",
     file->f_pos, tmp_buf);
    cifs_save_resume_key(current_entry, cifsFile);
    break;
   } else
    current_entry =
     nxt_dir_entry(current_entry, end_of_smb,
      cifsFile->srch_inf.info_level);
  }
  kfree(tmp_buf);
  break;
 }

rddir2_exit:
 FreeXid(xid);
 return rc;
}
