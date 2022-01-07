
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_bmap {TYPE_1__* b_ops; } ;
typedef unsigned long __u64 ;
struct TYPE_2__ {int (* bop_last_key ) (struct nilfs_bmap*,unsigned long*) ;} ;


 int ENOENT ;
 int nilfs_bmap_do_delete (struct nilfs_bmap*,unsigned long) ;
 int stub1 (struct nilfs_bmap*,unsigned long*) ;
 int stub2 (struct nilfs_bmap*,unsigned long*) ;

__attribute__((used)) static int nilfs_bmap_do_truncate(struct nilfs_bmap *bmap, unsigned long key)
{
 __u64 lastkey;
 int ret;

 ret = bmap->b_ops->bop_last_key(bmap, &lastkey);
 if (ret < 0) {
  if (ret == -ENOENT)
   ret = 0;
  return ret;
 }

 while (key <= lastkey) {
  ret = nilfs_bmap_do_delete(bmap, lastkey);
  if (ret < 0)
   return ret;
  ret = bmap->b_ops->bop_last_key(bmap, &lastkey);
  if (ret < 0) {
   if (ret == -ENOENT)
    ret = 0;
   return ret;
  }
 }
 return 0;
}
