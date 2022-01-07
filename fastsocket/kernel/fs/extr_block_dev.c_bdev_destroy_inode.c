
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct bdev_inode {int dummy; } ;


 struct bdev_inode* BDEV_I (struct inode*) ;
 int bdev_cachep ;
 int kmem_cache_free (int ,struct bdev_inode*) ;

__attribute__((used)) static void bdev_destroy_inode(struct inode *inode)
{
 struct bdev_inode *bdi = BDEV_I(inode);

 kmem_cache_free(bdev_cachep, bdi);
}
