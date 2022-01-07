
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int dmd_type; int dmd_fileindex; int dmd_lineno; int * dmd_macro; int dmd_offset; } ;
struct TYPE_12__ {scalar_t__ dbgp_mdcnt; TYPE_3__* dbgp_mdlist; } ;
struct TYPE_11__ {int ds_size; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_P_Section ;
typedef TYPE_2__* Dwarf_P_Debug ;
typedef TYPE_3__ Dwarf_Macro_Details ;
typedef int Dwarf_Error ;


 int DW_DLE_NONE ;





 int RCHECK (int ) ;
 int SHT_PROGBITS ;
 int WRITE_STRING (int *) ;
 int WRITE_ULEB128 (int ) ;
 int WRITE_VALUE (int,int) ;
 int _dwarf_section_callback (TYPE_2__*,TYPE_1__*,int ,int ,int ,int ,int *) ;
 int _dwarf_section_free (TYPE_2__*,TYPE_1__**) ;
 int _dwarf_section_init (TYPE_2__*,TYPE_1__**,char*,int ,int *) ;
 int assert (int ) ;

int
_dwarf_macinfo_gen(Dwarf_P_Debug dbg, Dwarf_Error *error)
{
 Dwarf_P_Section ds;
 Dwarf_Macro_Details *md;
 int i, ret;

 if (dbg->dbgp_mdcnt == 0)
  return (DW_DLE_NONE);


 RCHECK(_dwarf_section_init(dbg, &ds, ".debug_macinfo", 0, error));


 for (i = 0; (Dwarf_Unsigned) i < dbg->dbgp_mdcnt; i++) {
  md = &dbg->dbgp_mdlist[i];
  md->dmd_offset = ds->ds_size;
  RCHECK(WRITE_VALUE(md->dmd_type, 1));
  switch (md->dmd_type) {
  case 132:
  case 129:
  case 128:
   RCHECK(WRITE_ULEB128(md->dmd_lineno));
   assert(md->dmd_macro != ((void*)0));
   RCHECK(WRITE_STRING(md->dmd_macro));
   break;
  case 130:
   RCHECK(WRITE_ULEB128(md->dmd_lineno));
   RCHECK(WRITE_ULEB128(md->dmd_fileindex));
   break;
  case 131:
   break;
  default:
   assert(0);
   break;
  }
 }
 RCHECK(WRITE_VALUE(0, 1));


 RCHECK(_dwarf_section_callback(dbg, ds, SHT_PROGBITS, 0, 0, 0, error));

 return (DW_DLE_NONE);

gen_fail:
 _dwarf_section_free(dbg, &ds);

 return (ret);
}
