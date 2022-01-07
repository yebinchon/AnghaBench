
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ dbg_strtab_size; int dbg_strtab; } ;
struct TYPE_11__ {scalar_t__ ds_cap; scalar_t__ ds_size; int * ds_data; } ;
typedef TYPE_1__* Dwarf_P_Section ;
typedef TYPE_2__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_2__*,int *,int) ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int SHT_PROGBITS ;
 int _dwarf_section_callback (TYPE_2__*,TYPE_1__*,int ,int ,int ,int ,int *) ;
 int _dwarf_section_free (TYPE_2__*,TYPE_1__**) ;
 int _dwarf_section_init (TYPE_2__*,TYPE_1__**,char*,int ,int *) ;
 int assert (int ) ;
 int memcpy (int *,int ,scalar_t__) ;
 int * realloc (int *,size_t) ;

int
_dwarf_strtab_gen(Dwarf_P_Debug dbg, Dwarf_Error *error)
{
 Dwarf_P_Section ds;
 int ret;

 assert(dbg != ((void*)0));

 if ((ret = _dwarf_section_init(dbg, &ds, ".debug_str", 0, error)) !=
     DW_DLE_NONE)
  return (ret);

 if (dbg->dbg_strtab_size > ds->ds_cap) {
  ds->ds_data = realloc(ds->ds_data,
      (size_t) dbg->dbg_strtab_size);
  if (ds->ds_data == ((void*)0)) {
   _dwarf_section_free(dbg, &ds);
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   return (DW_DLE_MEMORY);
  }
  ds->ds_cap = dbg->dbg_strtab_size;
 }

 memcpy(ds->ds_data, dbg->dbg_strtab, dbg->dbg_strtab_size);
 ds->ds_size = dbg->dbg_strtab_size;






 ret = _dwarf_section_callback(dbg, ds, SHT_PROGBITS, 0, 0, 0, error);

 return (ret);
}
