
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_block_link {scalar_t__ magic_num; } ;


 scalar_t__ BTRFSIC_BLOCK_LINK_MAGIC_NUMBER ;
 int BUG_ON (int) ;
 int kfree (struct btrfsic_block_link*) ;

__attribute__((used)) static void btrfsic_block_link_free(struct btrfsic_block_link *l)
{
 BUG_ON(!(((void*)0) == l || BTRFSIC_BLOCK_LINK_MAGIC_NUMBER == l->magic_num));
 kfree(l);
}
