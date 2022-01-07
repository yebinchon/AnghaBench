
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kvec {char* iov_base; unsigned int iov_len; } ;
struct TYPE_5__ {int name; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__ d_name; int d_sb; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {scalar_t__ wsize; } ;
struct cifs_io_parms {unsigned int length; scalar_t__ offset; struct cifs_tcon* tcon; int pid; int netfid; } ;
struct cifsInodeInfo {int dummy; } ;
struct cifsFileInfo {int netfid; scalar_t__ invalidHandle; int tlink; struct dentry* dentry; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
typedef int __u32 ;
struct TYPE_6__ {scalar_t__ i_size; int i_lock; } ;


 int CIFSSMBWrite2 (int,struct cifs_io_parms*,unsigned int*,struct kvec*,int,int ) ;
 struct cifsInodeInfo* CIFS_I (TYPE_2__*) ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int EAGAIN ;
 int FreeXid (int) ;
 int GetXid () ;
 int cFYI (int,char*,size_t,scalar_t__,int ) ;
 int cifs_reopen_file (struct cifsFileInfo*,int) ;
 int cifs_stats_bytes_written (struct cifs_tcon*,unsigned int) ;
 int cifs_update_eof (struct cifsInodeInfo*,scalar_t__,unsigned int) ;
 int i_size_write (TYPE_2__*,scalar_t__) ;
 int mark_inode_dirty_sync (TYPE_2__*) ;
 unsigned int min (size_t,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct cifs_tcon* tlink_tcon (int ) ;

__attribute__((used)) static ssize_t cifs_write(struct cifsFileInfo *open_file, __u32 pid,
     const char *write_data, size_t write_size,
     loff_t *poffset)
{
 int rc = 0;
 unsigned int bytes_written = 0;
 unsigned int total_written;
 struct cifs_sb_info *cifs_sb;
 struct cifs_tcon *pTcon;
 int xid;
 struct dentry *dentry = open_file->dentry;
 struct cifsInodeInfo *cifsi = CIFS_I(dentry->d_inode);
 struct cifs_io_parms io_parms;

 cifs_sb = CIFS_SB(dentry->d_sb);

 cFYI(1, "write %zd bytes to offset %lld of %s", write_size,
    *poffset, dentry->d_name.name);

 pTcon = tlink_tcon(open_file->tlink);

 xid = GetXid();

 for (total_written = 0; write_size > total_written;
      total_written += bytes_written) {
  rc = -EAGAIN;
  while (rc == -EAGAIN) {
   struct kvec iov[2];
   unsigned int len;

   if (open_file->invalidHandle) {




    rc = cifs_reopen_file(open_file, 0);
    if (rc != 0)
     break;
   }

   len = min((size_t)cifs_sb->wsize,
      write_size - total_written);

   iov[1].iov_base = (char *)write_data + total_written;
   iov[1].iov_len = len;
   io_parms.netfid = open_file->netfid;
   io_parms.pid = pid;
   io_parms.tcon = pTcon;
   io_parms.offset = *poffset;
   io_parms.length = len;
   rc = CIFSSMBWrite2(xid, &io_parms, &bytes_written, iov,
        1, 0);
  }
  if (rc || (bytes_written == 0)) {
   if (total_written)
    break;
   else {
    FreeXid(xid);
    return rc;
   }
  } else {
   spin_lock(&dentry->d_inode->i_lock);
   cifs_update_eof(cifsi, *poffset, bytes_written);
   spin_unlock(&dentry->d_inode->i_lock);
   *poffset += bytes_written;
  }
 }

 cifs_stats_bytes_written(pTcon, total_written);

 if (total_written > 0) {
  spin_lock(&dentry->d_inode->i_lock);
  if (*poffset > dentry->d_inode->i_size)
   i_size_write(dentry->d_inode, *poffset);
  spin_unlock(&dentry->d_inode->i_lock);
 }
 mark_inode_dirty_sync(dentry->d_inode);
 FreeXid(xid);
 return total_written;
}
