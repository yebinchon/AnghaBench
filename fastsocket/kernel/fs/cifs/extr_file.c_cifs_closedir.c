
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {int dummy; } ;
struct TYPE_2__ {char* ntwrk_buf_start; scalar_t__ smallBuf; int endOfSearch; } ;
struct cifsFileInfo {int invalidHandle; int tlink; TYPE_1__ srch_inf; int netfid; } ;


 int CIFSFindClose (int,struct cifs_tcon*,int ) ;
 int FreeXid (int) ;
 int GetXid () ;
 int cFYI (int,char*,...) ;
 int cifs_buf_release (char*) ;
 int cifs_file_list_lock ;
 int cifs_put_tlink (int ) ;
 int cifs_small_buf_release (char*) ;
 int kfree (struct cifsFileInfo*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct cifs_tcon* tlink_tcon (int ) ;

int cifs_closedir(struct inode *inode, struct file *file)
{
 int rc = 0;
 int xid;
 struct cifsFileInfo *pCFileStruct = file->private_data;
 char *ptmp;

 cFYI(1, "Closedir inode = 0x%p", inode);

 xid = GetXid();

 if (pCFileStruct) {
  struct cifs_tcon *pTcon = tlink_tcon(pCFileStruct->tlink);

  cFYI(1, "Freeing private data in close dir");
  spin_lock(&cifs_file_list_lock);
  if (!pCFileStruct->srch_inf.endOfSearch &&
      !pCFileStruct->invalidHandle) {
   pCFileStruct->invalidHandle = 1;
   spin_unlock(&cifs_file_list_lock);
   rc = CIFSFindClose(xid, pTcon, pCFileStruct->netfid);
   cFYI(1, "Closing uncompleted readdir with rc %d",
     rc);

   rc = 0;
  } else
   spin_unlock(&cifs_file_list_lock);
  ptmp = pCFileStruct->srch_inf.ntwrk_buf_start;
  if (ptmp) {
   cFYI(1, "closedir free smb buf in srch struct");
   pCFileStruct->srch_inf.ntwrk_buf_start = ((void*)0);
   if (pCFileStruct->srch_inf.smallBuf)
    cifs_small_buf_release(ptmp);
   else
    cifs_buf_release(ptmp);
  }
  cifs_put_tlink(pCFileStruct->tlink);
  kfree(file->private_data);
  file->private_data = ((void*)0);
 }

 FreeXid(xid);
 return rc;
}
