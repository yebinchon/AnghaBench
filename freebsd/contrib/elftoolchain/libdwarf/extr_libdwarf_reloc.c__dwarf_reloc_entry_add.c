
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct _Dwarf_Rel_Entry {int dummy; } ;
struct TYPE_14__ {int dbgp_flags; int (* write_alloc ) (int *,int *,void**,void*,unsigned char,int *) ;} ;
struct TYPE_13__ {void* ds_size; int ds_cap; int ds_data; } ;
struct TYPE_12__ {unsigned char dre_type; unsigned char dre_length; char const* dre_secname; void* dre_addend; void* dre_symndx; void* dre_offset; } ;
struct TYPE_11__ {scalar_t__ drs_addend; int drs_drecnt; int drs_dre; } ;
typedef void* Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_Rel_Section ;
typedef TYPE_2__* Dwarf_Rel_Entry ;
typedef TYPE_3__* Dwarf_P_Section ;
typedef TYPE_4__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_4__*,int *,int) ;
 int DW_DLC_SYMBOLIC_RELOCATIONS ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int STAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int assert (int) ;
 TYPE_2__* calloc (int,int) ;
 int dre_next ;
 int stub1 (int *,int *,void**,void*,unsigned char,int *) ;
 int stub2 (int *,int *,void**,void*,unsigned char,int *) ;

int
_dwarf_reloc_entry_add(Dwarf_P_Debug dbg, Dwarf_Rel_Section drs,
    Dwarf_P_Section ds, unsigned char type, unsigned char length,
    Dwarf_Unsigned offset, Dwarf_Unsigned symndx, Dwarf_Unsigned addend,
    const char *secname, Dwarf_Error *error)
{
 Dwarf_Rel_Entry dre;
 Dwarf_Unsigned reloff;
 int ret;

 assert(drs != ((void*)0));
 assert(offset <= ds->ds_size);
 reloff = offset;
 if ((dbg->dbgp_flags & DW_DLC_SYMBOLIC_RELOCATIONS) ||
     drs->drs_addend == 0)
  ret = dbg->write_alloc(&ds->ds_data, &ds->ds_cap, &offset,
      addend, length, error);
 else
  ret = dbg->write_alloc(&ds->ds_data, &ds->ds_cap, &offset,
      0, length, error);
 if (ret != DW_DLE_NONE)
  return (ret);
 if (offset > ds->ds_size)
  ds->ds_size = offset;

 if ((dre = calloc(1, sizeof(struct _Dwarf_Rel_Entry))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }
 STAILQ_INSERT_TAIL(&drs->drs_dre, dre, dre_next);
 dre->dre_type = type;
 dre->dre_length = length;
 dre->dre_offset = reloff;
 dre->dre_symndx = symndx;
 dre->dre_addend = addend;
 dre->dre_secname = secname;
 drs->drs_drecnt++;

 return (DW_DLE_NONE);
}
