
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;
typedef int Dwarf_Addr ;


 int DIE_FIND_CB_CONTINUE ;
 int DIE_FIND_CB_END ;
 scalar_t__ DW_TAG_inlined_subroutine ;
 scalar_t__ dwarf_haspc (int *,int ) ;
 scalar_t__ dwarf_tag (int *) ;

__attribute__((used)) static int __die_find_inline_cb(Dwarf_Die *die_mem, void *data)
{
 Dwarf_Addr *addr = data;

 if (dwarf_tag(die_mem) == DW_TAG_inlined_subroutine &&
     dwarf_haspc(die_mem, *addr))
  return DIE_FIND_CB_END;

 return DIE_FIND_CB_CONTINUE;
}
