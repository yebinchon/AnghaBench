
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blockvector {int dummy; } ;
struct block {int dummy; } ;
struct bfd_section {int dummy; } ;
typedef int CORE_ADDR ;


 struct block* BLOCKVECTOR_BLOCK (struct blockvector*,int) ;
 struct blockvector* blockvector_for_pc_sect (int ,struct bfd_section*,int*,int *) ;

struct block *
block_for_pc_sect (CORE_ADDR pc, struct bfd_section *section)
{
  struct blockvector *bl;
  int index;

  bl = blockvector_for_pc_sect (pc, section, &index, ((void*)0));
  if (bl)
    return BLOCKVECTOR_BLOCK (bl, index);
  return 0;
}
