
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int FAT_MAX_CACHE ;

__attribute__((used)) static inline int fat_max_cache(struct inode *inode)
{
 return FAT_MAX_CACHE;
}
