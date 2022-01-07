
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_node {int dummy; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct dst_node* private_data; } ;


 int dst_node_get (struct dst_node*) ;

__attribute__((used)) static int dst_bdev_open(struct block_device *bdev, fmode_t mode)
{
 struct dst_node *n = bdev->bd_disk->private_data;

 dst_node_get(n);
 return 0;
}
