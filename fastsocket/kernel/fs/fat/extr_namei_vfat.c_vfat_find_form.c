
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fat_slot_info {int bh; } ;


 int ENOENT ;
 int brelse (int ) ;
 int fat_scan (struct inode*,unsigned char*,struct fat_slot_info*) ;

__attribute__((used)) static int vfat_find_form(struct inode *dir, unsigned char *name)
{
 struct fat_slot_info sinfo;
 int err = fat_scan(dir, name, &sinfo);
 if (err)
  return -ENOENT;
 brelse(sinfo.bh);
 return 0;
}
