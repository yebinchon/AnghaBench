
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_15__ {int dbg_pointer_size; int (* write ) (int ,scalar_t__*,int ,int) ;} ;
struct TYPE_14__ {scalar_t__ fde_esymndx; int fde_length; scalar_t__ fde_offset; int fde_instlen; int fde_inst; int fde_adrange; int fde_eoff; int fde_initloc; int fde_symndx; int fde_cieoff; TYPE_1__* fde_cie; } ;
struct TYPE_13__ {int ds_data; scalar_t__ ds_size; } ;
struct TYPE_12__ {int cie_offset; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef int * Dwarf_Rel_Section ;
typedef TYPE_2__* Dwarf_P_Section ;
typedef TYPE_3__* Dwarf_P_Fde ;
typedef TYPE_4__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DW_CFA_nop ;
 int DW_DLE_NONE ;
 int RCHECK (int ) ;
 int WRITE_BLOCK (int ,int ) ;
 int WRITE_VALUE (int ,int) ;
 int _dwarf_reloc_entry_add (TYPE_4__*,int *,TYPE_2__*,int ,int,scalar_t__,int ,int ,char*,int *) ;
 int _dwarf_reloc_entry_add_pair (TYPE_4__*,int *,TYPE_2__*,int,scalar_t__,int ,scalar_t__,int ,int ,int *) ;
 int assert (int) ;
 int dwarf_drt_data_reloc ;
 int roundup (scalar_t__,int) ;
 int stub1 (int ,scalar_t__*,int ,int) ;

__attribute__((used)) static int
_dwarf_frame_gen_fde(Dwarf_P_Debug dbg, Dwarf_P_Section ds,
    Dwarf_Rel_Section drs, Dwarf_P_Fde fde, Dwarf_Error *error)
{
 Dwarf_Unsigned len;
 uint64_t offset;
 int ret;

 assert(dbg != ((void*)0) && ds != ((void*)0) && drs != ((void*)0));
 assert(fde != ((void*)0) && fde->fde_cie != ((void*)0));

 fde->fde_offset = offset = ds->ds_size;
 fde->fde_length = 0;
 fde->fde_cieoff = fde->fde_cie->cie_offset;


 RCHECK(WRITE_VALUE(fde->fde_length, 4));


 RCHECK(_dwarf_reloc_entry_add(dbg, drs, ds, dwarf_drt_data_reloc, 4,
     ds->ds_size, 0, fde->fde_cieoff, ".debug_frame", error));


 RCHECK(_dwarf_reloc_entry_add(dbg, drs, ds, dwarf_drt_data_reloc,
     dbg->dbg_pointer_size, ds->ds_size, fde->fde_symndx,
     fde->fde_initloc, ((void*)0), error));






 if (fde->fde_esymndx > 0)
  RCHECK(_dwarf_reloc_entry_add_pair(dbg, drs, ds,
      dbg->dbg_pointer_size, ds->ds_size, fde->fde_symndx,
      fde->fde_esymndx, fde->fde_initloc, fde->fde_eoff, error));
 else
  RCHECK(WRITE_VALUE(fde->fde_adrange, dbg->dbg_pointer_size));


 RCHECK(WRITE_BLOCK(fde->fde_inst, fde->fde_instlen));


 len = ds->ds_size - fde->fde_offset - 4;
 fde->fde_length = roundup(len, dbg->dbg_pointer_size);
 while (len++ < fde->fde_length)
  RCHECK(WRITE_VALUE(DW_CFA_nop, 1));


 dbg->write(ds->ds_data, &offset, fde->fde_length, 4);

 return (DW_DLE_NONE);

gen_fail:
 return (ret);
}
