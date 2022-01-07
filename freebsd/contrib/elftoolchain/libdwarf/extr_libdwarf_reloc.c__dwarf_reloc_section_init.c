
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct _Dwarf_Rel_Section {int dummy; } ;
typedef int name ;
struct TYPE_14__ {int dbgp_flags; int dbgp_drscnt; int dbgp_drslist; } ;
struct TYPE_13__ {int ds_name; } ;
struct TYPE_12__ {int drs_addend; int drs_dre; int drs_ds; TYPE_2__* drs_ref; } ;
typedef TYPE_1__* Dwarf_Rel_Section ;
typedef TYPE_2__* Dwarf_P_Section ;
typedef TYPE_3__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_3__*,int *,int) ;
 int DW_DLC_SIZE_64 ;
 int DW_DLC_SYMBOLIC_RELOCATIONS ;
 int DW_DLE_MEMORY ;
 scalar_t__ DW_DLE_NONE ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 scalar_t__ _dwarf_section_init (TYPE_3__*,int *,char*,int,int *) ;
 int assert (int) ;
 TYPE_1__* calloc (int,int) ;
 int drs_next ;
 int free (TYPE_1__*) ;
 int snprintf (char*,int,char*,char*,int ) ;

int
_dwarf_reloc_section_init(Dwarf_P_Debug dbg, Dwarf_Rel_Section *drsp,
    Dwarf_P_Section ref, Dwarf_Error *error)
{
 Dwarf_Rel_Section drs;
 char name[128];
 int pseudo;

 assert(dbg != ((void*)0) && drsp != ((void*)0) && ref != ((void*)0));

 if ((drs = calloc(1, sizeof(struct _Dwarf_Rel_Section))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }

 drs->drs_ref = ref;





 if (dbg->dbgp_flags & DW_DLC_SIZE_64)
  drs->drs_addend = 1;
 else
  drs->drs_addend = 0;

 if (dbg->dbgp_flags & DW_DLC_SYMBOLIC_RELOCATIONS)
  pseudo = 1;
 else
  pseudo = 0;

 snprintf(name, sizeof(name), "%s%s",
     drs->drs_addend ? ".rela" : ".rel", ref->ds_name);
 if (_dwarf_section_init(dbg, &drs->drs_ds, name, pseudo, error) !=
     DW_DLE_NONE) {
  free(drs);
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }

 STAILQ_INIT(&drs->drs_dre);
 STAILQ_INSERT_TAIL(&dbg->dbgp_drslist, drs, drs_next);
 dbg->dbgp_drscnt++;
 *drsp = drs;

 return (DW_DLE_NONE);
}
