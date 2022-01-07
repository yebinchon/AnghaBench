
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_stack_frame {scalar_t__ magic; } ;


 scalar_t__ BTRFSIC_BLOCK_STACK_FRAME_MAGIC_NUMBER ;
 int BUG_ON (int) ;
 int kfree (struct btrfsic_stack_frame*) ;

__attribute__((used)) static void btrfsic_stack_frame_free(struct btrfsic_stack_frame *sf)
{
 BUG_ON(!(((void*)0) == sf ||
   BTRFSIC_BLOCK_STACK_FRAME_MAGIC_NUMBER == sf->magic));
 kfree(sf);
}
