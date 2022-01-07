
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysv_dir_entry {scalar_t__ inode; int name; } ;
struct page {int mapping; } ;
struct inode {int i_ctime; int i_mtime; int i_ino; int i_sb; } ;
struct TYPE_4__ {char* name; int len; } ;
struct dentry {TYPE_2__ d_name; TYPE_1__* d_parent; } ;
typedef int loff_t ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int AOP_FLAG_UNINTERRUPTIBLE ;
 int BUG () ;
 int CURRENT_TIME_SEC ;
 int EEXIST ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct page*) ;
 scalar_t__ PAGE_CACHE_SIZE ;
 int PTR_ERR (struct page*) ;
 int SYSV_DIRSIZE ;
 int SYSV_NAMELEN ;
 int SYSV_SB (int ) ;
 int __sysv_write_begin (int *,int ,int,int,int ,struct page**,int *) ;
 scalar_t__ cpu_to_fs16 (int ,int ) ;
 int dir_commit_chunk (struct page*,int,int) ;
 struct page* dir_get_page (struct inode*,unsigned long) ;
 unsigned long dir_pages (struct inode*) ;
 int dir_put_page (struct page*) ;
 int lock_page (struct page*) ;
 int mark_inode_dirty (struct inode*) ;
 int memcpy (int ,char const*,int) ;
 int memset (int ,int ,int) ;
 scalar_t__ namecompare (int,int ,char const*,int ) ;
 scalar_t__ page_address (struct page*) ;
 int page_offset (struct page*) ;
 int unlock_page (struct page*) ;

int sysv_add_link(struct dentry *dentry, struct inode *inode)
{
 struct inode *dir = dentry->d_parent->d_inode;
 const char * name = dentry->d_name.name;
 int namelen = dentry->d_name.len;
 struct page *page = ((void*)0);
 struct sysv_dir_entry * de;
 unsigned long npages = dir_pages(dir);
 unsigned long n;
 char *kaddr;
 loff_t pos;
 int err;


 for (n = 0; n <= npages; n++) {
  page = dir_get_page(dir, n);
  err = PTR_ERR(page);
  if (IS_ERR(page))
   goto out;
  kaddr = (char*)page_address(page);
  de = (struct sysv_dir_entry *)kaddr;
  kaddr += PAGE_CACHE_SIZE - SYSV_DIRSIZE;
  while ((char *)de <= kaddr) {
   if (!de->inode)
    goto got_it;
   err = -EEXIST;
   if (namecompare(namelen, SYSV_NAMELEN, name, de->name))
    goto out_page;
   de++;
  }
  dir_put_page(page);
 }
 BUG();
 return -EINVAL;

got_it:
 pos = page_offset(page) +
   (char*)de - (char*)page_address(page);
 lock_page(page);
 err = __sysv_write_begin(((void*)0), page->mapping, pos, SYSV_DIRSIZE,
    AOP_FLAG_UNINTERRUPTIBLE, &page, ((void*)0));
 if (err)
  goto out_unlock;
 memcpy (de->name, name, namelen);
 memset (de->name + namelen, 0, SYSV_DIRSIZE - namelen - 2);
 de->inode = cpu_to_fs16(SYSV_SB(inode->i_sb), inode->i_ino);
 err = dir_commit_chunk(page, pos, SYSV_DIRSIZE);
 dir->i_mtime = dir->i_ctime = CURRENT_TIME_SEC;
 mark_inode_dirty(dir);
out_page:
 dir_put_page(page);
out:
 return err;
out_unlock:
 unlock_page(page);
 goto out_page;
}
