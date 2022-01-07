
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_block {int dummy; } ;


 int dwarf2_tmp_obstack ;
 scalar_t__ obstack_alloc (int *,int) ;

__attribute__((used)) static struct dwarf_block *
dwarf_alloc_block (void)
{
  struct dwarf_block *blk;

  blk = (struct dwarf_block *)
    obstack_alloc (&dwarf2_tmp_obstack, sizeof (struct dwarf_block));
  return (blk);
}
