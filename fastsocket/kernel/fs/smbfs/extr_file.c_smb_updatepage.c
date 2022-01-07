
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {scalar_t__ index; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int d_inode; } ;


 int DEBUG1 (char*,int ,unsigned int,unsigned long long) ;
 int DENTRY_PATH (struct dentry*) ;
 unsigned long long PAGE_CACHE_SHIFT ;
 int smb_writepage_sync (int ,struct page*,unsigned long,unsigned int) ;

__attribute__((used)) static int
smb_updatepage(struct file *file, struct page *page, unsigned long offset,
        unsigned int count)
{
 struct dentry *dentry = file->f_path.dentry;

 DEBUG1("(%s/%s %d@%lld)\n", DENTRY_PATH(dentry), count,
  ((unsigned long long)page->index << PAGE_CACHE_SHIFT) + offset);

 return smb_writepage_sync(dentry->d_inode, page, offset, count);
}
