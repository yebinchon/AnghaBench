
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ dbg_mode; char* dbg_strtab; scalar_t__ dbg_strtab_cap; scalar_t__ dbg_strtab_size; } ;
struct TYPE_7__ {scalar_t__ ds_data; scalar_t__ ds_size; } ;
typedef TYPE_1__ Dwarf_Section ;
typedef int Dwarf_Error ;
typedef TYPE_2__* Dwarf_Debug ;


 int DWARF_SET_ERROR (TYPE_2__*,int *,int) ;
 scalar_t__ DW_DLC_RDWR ;
 scalar_t__ DW_DLC_READ ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 scalar_t__ _INIT_DWARF_STRTAB_SIZE ;
 TYPE_1__* _dwarf_find_section (TYPE_2__*,char*) ;
 int assert (int ) ;
 void* malloc (size_t) ;
 int memcpy (char*,scalar_t__,scalar_t__) ;

int
_dwarf_strtab_init(Dwarf_Debug dbg, Dwarf_Error *error)
{
 Dwarf_Section *ds;

 assert(dbg != ((void*)0));

 if (dbg->dbg_mode == DW_DLC_READ || dbg->dbg_mode == DW_DLC_RDWR) {
  ds = _dwarf_find_section(dbg, ".debug_str");
  if (ds == ((void*)0)) {
   dbg->dbg_strtab = ((void*)0);
   dbg->dbg_strtab_cap = dbg->dbg_strtab_size = 0;
   return (DW_DLE_NONE);
  }

  dbg->dbg_strtab_cap = dbg->dbg_strtab_size = ds->ds_size;

  if (dbg->dbg_mode == DW_DLC_RDWR) {
   if ((dbg->dbg_strtab = malloc((size_t) ds->ds_size)) ==
       ((void*)0)) {
    DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
    return (DW_DLE_MEMORY);
   }
   memcpy(dbg->dbg_strtab, ds->ds_data, ds->ds_size);
  } else
   dbg->dbg_strtab = (char *) ds->ds_data;
 } else {


  dbg->dbg_strtab_cap = _INIT_DWARF_STRTAB_SIZE;
  dbg->dbg_strtab_size = 0;

  if ((dbg->dbg_strtab = malloc((size_t) dbg->dbg_strtab_cap)) ==
      ((void*)0)) {
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   return (DW_DLE_MEMORY);
  }

  dbg->dbg_strtab[0] = '\0';
 }

 return (DW_DLE_NONE);
}
