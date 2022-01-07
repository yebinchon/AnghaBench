
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct minix_sb_info {int dummy; } ;
struct minix_dir_entry {int dummy; } ;
struct inode {int i_sb; } ;


 int IS_ERR (struct page*) ;
 struct page* dir_get_page (struct inode*,int ) ;
 struct minix_dir_entry* minix_next_entry (int ,struct minix_sb_info*) ;
 struct minix_sb_info* minix_sb (int ) ;
 int page_address (struct page*) ;

struct minix_dir_entry * minix_dotdot (struct inode *dir, struct page **p)
{
 struct page *page = dir_get_page(dir, 0);
 struct minix_sb_info *sbi = minix_sb(dir->i_sb);
 struct minix_dir_entry *de = ((void*)0);

 if (!IS_ERR(page)) {
  de = minix_next_entry(page_address(page), sbi);
  *p = page;
 }
 return de;
}
