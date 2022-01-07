
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct block {int dummy; } ;
struct bfd_section {int dummy; } ;
typedef int CORE_ADDR ;


 struct block* block_for_pc_sect (int ,struct bfd_section*) ;
 struct symbol* block_function (struct block*) ;

struct symbol *
find_pc_sect_function (CORE_ADDR pc, struct bfd_section *section)
{
  struct block *b = block_for_pc_sect (pc, section);
  if (b == 0)
    return 0;
  return block_function (b);
}
