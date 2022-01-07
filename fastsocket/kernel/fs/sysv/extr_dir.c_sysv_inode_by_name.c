
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_dir_entry {int inode; } ;
struct page {int dummy; } ;
struct dentry {int d_sb; } ;
typedef int ino_t ;


 int SYSV_SB (int ) ;
 int dir_put_page (struct page*) ;
 int fs16_to_cpu (int ,int ) ;
 struct sysv_dir_entry* sysv_find_entry (struct dentry*,struct page**) ;

ino_t sysv_inode_by_name(struct dentry *dentry)
{
 struct page *page;
 struct sysv_dir_entry *de = sysv_find_entry (dentry, &page);
 ino_t res = 0;

 if (de) {
  res = fs16_to_cpu(SYSV_SB(dentry->d_sb), de->inode);
  dir_put_page(page);
 }
 return res;
}
