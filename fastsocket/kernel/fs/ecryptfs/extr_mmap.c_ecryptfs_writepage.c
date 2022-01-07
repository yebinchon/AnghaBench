
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {int index; } ;


 int ClearPageUptodate (struct page*) ;
 int KERN_WARNING ;
 int SetPageUptodate (struct page*) ;
 int ecryptfs_encrypt_page (struct page*) ;
 int ecryptfs_printk (int ,char*,int ) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ecryptfs_writepage(struct page *page, struct writeback_control *wbc)
{
 int rc;

 rc = ecryptfs_encrypt_page(page);
 if (rc) {
  ecryptfs_printk(KERN_WARNING, "Error encrypting "
    "page (upper index [0x%.16x])\n", page->index);
  ClearPageUptodate(page);
  goto out;
 }
 SetPageUptodate(page);
 unlock_page(page);
out:
 return rc;
}
