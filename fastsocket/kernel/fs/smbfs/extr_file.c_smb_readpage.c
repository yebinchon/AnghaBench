
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;


 int page_cache_get (struct page*) ;
 int page_cache_release (struct page*) ;
 int smb_readpage_sync (struct dentry*,struct page*) ;

__attribute__((used)) static int
smb_readpage(struct file *file, struct page *page)
{
 int error;
 struct dentry *dentry = file->f_path.dentry;

 page_cache_get(page);
 error = smb_readpage_sync(dentry, page);
 page_cache_release(page);
 return error;
}
