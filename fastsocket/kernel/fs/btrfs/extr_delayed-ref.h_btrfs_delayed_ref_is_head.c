
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_delayed_ref_node {int is_head; } ;



__attribute__((used)) static int btrfs_delayed_ref_is_head(struct btrfs_delayed_ref_node *node)
{
 return node->is_head;
}
