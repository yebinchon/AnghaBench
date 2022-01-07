
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int entry ;
struct TYPE_12__ {scalar_t__ ab_entry; } ;
struct TYPE_11__ {int cu_abbrev_loaded; scalar_t__ cu_abbrev_offset_cur; int cu_dbg; int cu_abbrev_hash; } ;
struct TYPE_10__ {scalar_t__ ds_size; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef TYPE_1__ Dwarf_Section ;
typedef int Dwarf_Error ;
typedef TYPE_2__* Dwarf_CU ;
typedef TYPE_3__* Dwarf_Abbrev ;


 int DW_DLE_NONE ;
 int DW_DLE_NO_ENTRY ;
 int HASH_FIND (int ,int ,scalar_t__*,int,TYPE_3__*) ;
 int _dwarf_abbrev_parse (int ,TYPE_2__*,scalar_t__*,TYPE_3__**,int *) ;
 TYPE_1__* _dwarf_find_section (int ,char*) ;
 int ab_hh ;

int
_dwarf_abbrev_find(Dwarf_CU cu, uint64_t entry, Dwarf_Abbrev *abp,
    Dwarf_Error *error)
{
 Dwarf_Abbrev ab;
 Dwarf_Section *ds;
 Dwarf_Unsigned offset;
 int ret;

 if (entry == 0)
  return (DW_DLE_NO_ENTRY);


 HASH_FIND(ab_hh, cu->cu_abbrev_hash, &entry, sizeof(entry), ab);
 if (ab != ((void*)0)) {
  *abp = ab;
  return (DW_DLE_NONE);
 }

 if (cu->cu_abbrev_loaded) {
  return (DW_DLE_NO_ENTRY);
 }


 ds = _dwarf_find_section(cu->cu_dbg, ".debug_abbrev");
 if (ds == ((void*)0))
  return (DW_DLE_NO_ENTRY);

 offset = cu->cu_abbrev_offset_cur;
 while (offset < ds->ds_size) {
  ret = _dwarf_abbrev_parse(cu->cu_dbg, cu, &offset, &ab, error);
  if (ret != DW_DLE_NONE)
   return (ret);
  if (ab->ab_entry == entry) {
   cu->cu_abbrev_offset_cur = offset;
   *abp = ab;
   return (DW_DLE_NONE);
  }
  if (ab->ab_entry == 0) {
   cu->cu_abbrev_offset_cur = offset;
   cu->cu_abbrev_loaded = 1;
   break;
  }
 }

 return (DW_DLE_NO_ENTRY);
}
