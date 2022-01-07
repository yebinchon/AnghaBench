
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int b_sem; } ;


 int down_write (int *) ;
 int nilfs_bmap_do_insert (struct nilfs_bmap*,unsigned long,unsigned long) ;
 int up_write (int *) ;

int nilfs_bmap_insert(struct nilfs_bmap *bmap,
        unsigned long key,
        unsigned long rec)
{
 int ret;

 down_write(&bmap->b_sem);
 ret = nilfs_bmap_do_insert(bmap, key, rec);
 up_write(&bmap->b_sem);
 return ret;
}
