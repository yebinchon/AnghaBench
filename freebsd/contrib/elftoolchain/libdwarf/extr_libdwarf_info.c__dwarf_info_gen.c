
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct _Dwarf_CU {int dummy; } ;
struct TYPE_26__ {int cu_version; int cu_pointer_size; int cu_length; int cu_abbrev_offset; TYPE_2__* cu_dbg; } ;
struct TYPE_25__ {int dbg_pointer_size; int dbg_cu; TYPE_1__* dbgp_info; int (* write ) (int ,scalar_t__*,int,int) ;int * dbgp_root_die; int * write_alloc; } ;
struct TYPE_24__ {int ds_size; int ds_data; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef int Dwarf_Rel_Section ;
typedef TYPE_1__* Dwarf_P_Section ;
typedef TYPE_2__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;
typedef TYPE_3__* Dwarf_CU ;


 int DWARF_SET_ERROR (TYPE_2__*,int *,int) ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int RCHECK (int ) ;
 int SHT_PROGBITS ;
 int STAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int STAILQ_REMOVE (int *,TYPE_3__*,int ,int ) ;
 int WRITE_VALUE (int,int) ;
 int _Dwarf_CU ;
 int _dwarf_die_gen (TYPE_2__*,TYPE_3__*,int ,int *) ;
 int _dwarf_reloc_entry_add (TYPE_2__*,int ,TYPE_1__*,int ,int,int,int ,int ,char*,int *) ;
 int _dwarf_reloc_section_finalize (TYPE_2__*,int ,int *) ;
 int _dwarf_reloc_section_free (TYPE_2__*,int *) ;
 int _dwarf_reloc_section_init (TYPE_2__*,int *,TYPE_1__*,int *) ;
 int _dwarf_section_callback (TYPE_2__*,TYPE_1__*,int ,int ,int ,int ,int *) ;
 int _dwarf_section_free (TYPE_2__*,TYPE_1__**) ;
 int _dwarf_section_init (TYPE_2__*,TYPE_1__**,char*,int ,int *) ;
 int assert (int) ;
 TYPE_3__* calloc (int,int) ;
 int cu_next ;
 int dwarf_drt_data_reloc ;
 int free (TYPE_3__*) ;
 int stub1 (int ,scalar_t__*,int,int) ;

int
_dwarf_info_gen(Dwarf_P_Debug dbg, Dwarf_Error *error)
{
 Dwarf_P_Section ds;
 Dwarf_Rel_Section drs;
 Dwarf_Unsigned offset;
 Dwarf_CU cu;
 int ret;

 assert(dbg != ((void*)0) && dbg->write_alloc != ((void*)0));

 if (dbg->dbgp_root_die == ((void*)0))
  return (DW_DLE_NONE);


 if ((cu = calloc(1, sizeof(struct _Dwarf_CU))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }
 cu->cu_dbg = dbg;
 cu->cu_version = 2;
 cu->cu_pointer_size = dbg->dbg_pointer_size;
 STAILQ_INSERT_TAIL(&dbg->dbg_cu, cu, cu_next);


 if ((ret = _dwarf_section_init(dbg, &dbg->dbgp_info, ".debug_info", 0,
     error)) != DW_DLE_NONE)
  goto gen_fail1;
 ds = dbg->dbgp_info;


 if ((ret = _dwarf_reloc_section_init(dbg, &drs, ds, error)) !=
     DW_DLE_NONE)
  goto gen_fail0;


 RCHECK(WRITE_VALUE(cu->cu_length, 4));


 RCHECK(WRITE_VALUE(cu->cu_version, 2));





 RCHECK(_dwarf_reloc_entry_add(dbg, drs, ds, dwarf_drt_data_reloc, 4,
     ds->ds_size, 0, cu->cu_abbrev_offset, ".debug_abbrev", error));


 RCHECK(WRITE_VALUE(cu->cu_pointer_size, 1));


 RCHECK(_dwarf_die_gen(dbg, cu, drs, error));


 cu->cu_length = ds->ds_size - 4;
 offset = 0;
 dbg->write(ds->ds_data, &offset, cu->cu_length, 4);


 RCHECK(_dwarf_section_callback(dbg, ds, SHT_PROGBITS, 0, 0, 0, error));





 RCHECK(_dwarf_reloc_section_finalize(dbg, drs, error));

 return (DW_DLE_NONE);

gen_fail:
 _dwarf_reloc_section_free(dbg, &drs);

gen_fail0:
 _dwarf_section_free(dbg, &dbg->dbgp_info);

gen_fail1:
 STAILQ_REMOVE(&dbg->dbg_cu, cu, _Dwarf_CU, cu_next);
 free(cu);

 return (ret);
}
