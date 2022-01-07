
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct dst_node* private_data; } ;
struct dst_node {int dummy; } ;
typedef int fmode_t ;


 int dst_node_put (struct dst_node*) ;

__attribute__((used)) static int dst_bdev_release(struct gendisk *disk, fmode_t mode)
{
 struct dst_node *n = disk->private_data;

 dst_node_put(n);
 return 0;
}
