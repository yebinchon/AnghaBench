
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ld_cents; int * ld_s; int ld_hipc; int ld_lopc; } ;
typedef TYPE_1__ Dwarf_Locdesc ;
typedef int Dwarf_Loc ;
typedef int Dwarf_Error ;
typedef int Dwarf_Debug ;


 int DWARF_SET_ERROR (int ,int *,int) ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int assert (int) ;
 int * calloc (scalar_t__,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int
copy_locdesc(Dwarf_Debug dbg, Dwarf_Locdesc *dst, Dwarf_Locdesc *src,
    Dwarf_Error *error)
{

 assert(src != ((void*)0) && dst != ((void*)0));

 dst->ld_lopc = src->ld_lopc;
 dst->ld_hipc = src->ld_hipc;
 dst->ld_cents = src->ld_cents;

 if (dst->ld_cents > 0) {
  dst->ld_s = calloc(dst->ld_cents, sizeof(Dwarf_Loc));
  if (dst->ld_s == ((void*)0)) {
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   return (DW_DLE_MEMORY);
  }
  memcpy(dst->ld_s, src->ld_s, src->ld_cents *
      sizeof(Dwarf_Loc));
 } else
  dst->ld_s = ((void*)0);

 return (DW_DLE_NONE);
}
