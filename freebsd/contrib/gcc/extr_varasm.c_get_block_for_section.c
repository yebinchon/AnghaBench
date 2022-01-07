
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_block {int * sect; } ;
typedef int section ;


 int INSERT ;
 scalar_t__ ggc_alloc_cleared (int) ;
 int hash_section (int *) ;
 void** htab_find_slot_with_hash (int ,int *,int ,int ) ;
 int object_block_htab ;

__attribute__((used)) static struct object_block *
get_block_for_section (section *sect)
{
  struct object_block *block;
  void **slot;

  if (sect == ((void*)0))
    return ((void*)0);

  slot = htab_find_slot_with_hash (object_block_htab, sect,
       hash_section (sect), INSERT);
  block = (struct object_block *) *slot;
  if (block == ((void*)0))
    {
      block = (struct object_block *)
 ggc_alloc_cleared (sizeof (struct object_block));
      block->sect = sect;
      *slot = block;
    }
  return block;
}
