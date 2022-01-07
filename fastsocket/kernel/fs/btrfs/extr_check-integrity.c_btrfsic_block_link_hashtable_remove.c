
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_block_link {int collision_resolving_node; } ;


 int list_del (int *) ;

__attribute__((used)) static void btrfsic_block_link_hashtable_remove(struct btrfsic_block_link *l)
{
 list_del(&l->collision_resolving_node);
}
