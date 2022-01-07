
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
struct blockvector {int dummy; } ;
struct block {int dummy; } ;
struct bfd_section {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 struct blockvector* BLOCKVECTOR (struct symtab*) ;
 struct block* BLOCKVECTOR_BLOCK (struct blockvector*,int) ;
 int BLOCKVECTOR_NBLOCKS (struct blockvector*) ;
 scalar_t__ BLOCK_END (struct block*) ;
 scalar_t__ BLOCK_START (struct block*) ;
 struct symtab* find_pc_sect_symtab (scalar_t__,struct bfd_section*) ;

struct blockvector *
blockvector_for_pc_sect (CORE_ADDR pc, struct bfd_section *section,
    int *pindex, struct symtab *symtab)
{
  struct block *b;
  int bot, top, half;
  struct blockvector *bl;

  if (symtab == 0)
    {

      symtab = find_pc_sect_symtab (pc, section);
      if (symtab == 0)
 return 0;
    }

  bl = BLOCKVECTOR (symtab);
  b = BLOCKVECTOR_BLOCK (bl, 0);




  bot = 0;
  top = BLOCKVECTOR_NBLOCKS (bl);

  while (top - bot > 1)
    {
      half = (top - bot + 1) >> 1;
      b = BLOCKVECTOR_BLOCK (bl, bot + half);
      if (BLOCK_START (b) <= pc)
 bot += half;
      else
 top = bot + half;
    }



  while (bot >= 0)
    {
      b = BLOCKVECTOR_BLOCK (bl, bot);
      if (BLOCK_END (b) > pc)
 {
   if (pindex)
     *pindex = bot;
   return bl;
 }
      bot--;
    }
  return 0;
}
