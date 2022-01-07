
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_9__ {unsigned int cie_length; int cie_version; unsigned int cie_ra; scalar_t__ cie_offset; scalar_t__ cie_instlen; int * cie_initinst; int cie_daf; int cie_caf; int * cie_augment; } ;
struct TYPE_8__ {int (* write ) (int ,scalar_t__*,unsigned int,int) ;int dbg_pointer_size; } ;
struct TYPE_7__ {int ds_data; scalar_t__ ds_size; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_P_Section ;
typedef TYPE_2__* Dwarf_P_Debug ;
typedef TYPE_3__* Dwarf_P_Cie ;
typedef int Dwarf_Error ;


 unsigned int DW_CFA_nop ;
 int DW_DLE_NONE ;
 int RCHECK (int ) ;
 int WRITE_BLOCK (int *,scalar_t__) ;
 int WRITE_SLEB128 (int ) ;
 int WRITE_ULEB128 (int ) ;
 int WRITE_VALUE (unsigned int,int) ;
 int assert (int) ;
 unsigned int roundup (scalar_t__,int ) ;
 scalar_t__ strlen (char*) ;
 int stub1 (int ,scalar_t__*,unsigned int,int) ;

__attribute__((used)) static int
_dwarf_frame_gen_cie(Dwarf_P_Debug dbg, Dwarf_P_Section ds, Dwarf_P_Cie cie,
    Dwarf_Error *error)
{
 Dwarf_Unsigned len;
 uint64_t offset;
 int ret;

 assert(dbg != ((void*)0) && ds != ((void*)0) && cie != ((void*)0));

 cie->cie_offset = offset = ds->ds_size;
 cie->cie_length = 0;
 cie->cie_version = 1;


 RCHECK(WRITE_VALUE(cie->cie_length, 4));


 RCHECK(WRITE_VALUE(~0U, 4));


 RCHECK(WRITE_VALUE(cie->cie_version, 1));


 if (cie->cie_augment != ((void*)0))
  RCHECK(WRITE_BLOCK(cie->cie_augment,
      strlen((char *) cie->cie_augment) + 1));
 else
  RCHECK(WRITE_VALUE(0, 1));


 RCHECK(WRITE_ULEB128(cie->cie_caf));
 RCHECK(WRITE_SLEB128(cie->cie_daf));
 RCHECK(WRITE_VALUE(cie->cie_ra, 1));


 if (cie->cie_initinst != ((void*)0))
  RCHECK(WRITE_BLOCK(cie->cie_initinst, cie->cie_instlen));


 len = ds->ds_size - cie->cie_offset - 4;
 cie->cie_length = roundup(len, dbg->dbg_pointer_size);
 while (len++ < cie->cie_length)
  RCHECK(WRITE_VALUE(DW_CFA_nop, 1));


 dbg->write(ds->ds_data, &offset, cie->cie_length, 4);

 return (DW_DLE_NONE);

gen_fail:
 return (ret);
}
