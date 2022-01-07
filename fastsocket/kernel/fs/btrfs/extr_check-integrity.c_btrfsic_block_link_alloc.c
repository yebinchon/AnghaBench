
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_block_link {int dummy; } ;


 int GFP_NOFS ;
 int btrfsic_block_link_init (struct btrfsic_block_link*) ;
 struct btrfsic_block_link* kzalloc (int,int ) ;

__attribute__((used)) static struct btrfsic_block_link *btrfsic_block_link_alloc(void)
{
 struct btrfsic_block_link *l;

 l = kzalloc(sizeof(*l), GFP_NOFS);
 if (((void*)0) != l)
  btrfsic_block_link_init(l);

 return l;
}
