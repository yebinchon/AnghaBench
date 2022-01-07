
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_bdev; scalar_t__ s_mtd; } ;


 int EIO ;
 int ENAMETOOLONG ;
 size_t ROMFS_MAXFN ;
 int romfs_blk_strcmp (struct super_block*,unsigned long,char const*,size_t) ;
 size_t romfs_maxsize (struct super_block*) ;
 int romfs_mtd_strcmp (struct super_block*,unsigned long,char const*,size_t) ;

int romfs_dev_strcmp(struct super_block *sb, unsigned long pos,
       const char *str, size_t size)
{
 size_t limit;

 limit = romfs_maxsize(sb);
 if (pos >= limit)
  return -EIO;
 if (size > ROMFS_MAXFN)
  return -ENAMETOOLONG;
 if (size + 1 > limit - pos)
  return -EIO;
 return -EIO;
}
