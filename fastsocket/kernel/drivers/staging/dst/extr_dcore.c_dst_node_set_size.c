
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_node {int size; int disk; } ;
struct block_device {TYPE_1__* bd_inode; } ;
struct TYPE_2__ {int i_mutex; } ;


 struct block_device* bdget_disk (int ,int ) ;
 int bdput (struct block_device*) ;
 int i_size_write (TYPE_1__*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_capacity (int ,int) ;

__attribute__((used)) static void dst_node_set_size(struct dst_node *n)
{
 struct block_device *bdev;

 set_capacity(n->disk, n->size >> 9);

 bdev = bdget_disk(n->disk, 0);
 if (bdev) {
  mutex_lock(&bdev->bd_inode->i_mutex);
  i_size_write(bdev->bd_inode, n->size);
  mutex_unlock(&bdev->bd_inode->i_mutex);
  bdput(bdev);
 }
}
