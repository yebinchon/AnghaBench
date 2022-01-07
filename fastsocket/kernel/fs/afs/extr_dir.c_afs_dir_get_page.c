
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct key {int dummy; } ;
struct inode {int i_mapping; int i_ino; } ;
struct file {struct key* private_data; } ;


 int EIO ;
 struct page* ERR_PTR (int ) ;
 int IS_ERR (struct page*) ;
 int PageChecked (struct page*) ;
 scalar_t__ PageError (struct page*) ;
 int _enter (char*,int ,unsigned long) ;
 int _leave (char*) ;
 int afs_dir_check_page (struct inode*,struct page*) ;
 int afs_dir_put_page (struct page*) ;
 int kmap (struct page*) ;
 struct page* read_mapping_page (int ,unsigned long,struct file*) ;

__attribute__((used)) static struct page *afs_dir_get_page(struct inode *dir, unsigned long index,
         struct key *key)
{
 struct page *page;
 struct file file = {
  .private_data = key,
 };

 _enter("{%lu},%lu", dir->i_ino, index);

 page = read_mapping_page(dir->i_mapping, index, &file);
 if (!IS_ERR(page)) {
  kmap(page);
  if (!PageChecked(page))
   afs_dir_check_page(dir, page);
  if (PageError(page))
   goto fail;
 }
 return page;

fail:
 afs_dir_put_page(page);
 _leave(" = -EIO");
 return ERR_PTR(-EIO);
}
