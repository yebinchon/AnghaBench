
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {unsigned int i_size; int i_lock; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifsFileInfo {int pid; TYPE_1__* dentry; } ;
struct address_space {struct inode* host; } ;
typedef unsigned int loff_t ;
typedef int __u32 ;
struct TYPE_4__ {int tgid; } ;
struct TYPE_3__ {int d_sb; } ;


 int CIFS_MOUNT_RWPIDFORWARD ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int ClearPageChecked (struct page*) ;
 int FreeXid (int) ;
 int GetXid () ;
 unsigned int PAGE_CACHE_SIZE ;
 scalar_t__ PageChecked (struct page*) ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int cFYI (int,char*,struct page*,unsigned int,unsigned int) ;
 int cifs_write (struct cifsFileInfo*,int ,char*,unsigned int,unsigned int*) ;
 TYPE_2__* current ;
 int i_size_write (struct inode*,unsigned int) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int page_cache_release (struct page*) ;
 int set_page_dirty (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int cifs_write_end(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata)
{
 int rc;
 struct inode *inode = mapping->host;
 struct cifsFileInfo *cfile = file->private_data;
 struct cifs_sb_info *cifs_sb = CIFS_SB(cfile->dentry->d_sb);
 __u32 pid;

 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_RWPIDFORWARD)
  pid = cfile->pid;
 else
  pid = current->tgid;

 cFYI(1, "write_end for page %p from pos %lld with %d bytes",
   page, pos, copied);

 if (PageChecked(page)) {
  if (copied == len)
   SetPageUptodate(page);
  ClearPageChecked(page);
 } else if (!PageUptodate(page) && copied == PAGE_CACHE_SIZE)
  SetPageUptodate(page);

 if (!PageUptodate(page)) {
  char *page_data;
  unsigned offset = pos & (PAGE_CACHE_SIZE - 1);
  int xid;

  xid = GetXid();





  page_data = kmap(page);
  rc = cifs_write(cfile, pid, page_data + offset, copied, &pos);

  kunmap(page);

  FreeXid(xid);
 } else {
  rc = copied;
  pos += copied;
  set_page_dirty(page);
 }

 if (rc > 0) {
  spin_lock(&inode->i_lock);
  if (pos > inode->i_size)
   i_size_write(inode, pos);
  spin_unlock(&inode->i_lock);
 }

 unlock_page(page);
 page_cache_release(page);

 return rc;
}
