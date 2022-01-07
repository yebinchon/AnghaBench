
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int dbgp_drslist; void* dbgp_drspos; int dbgp_seclist; void* dbgp_secpos; int dbgp_vars; int dbgp_types; int dbgp_funcs; int dbgp_weaks; int dbgp_pubs; } ;
typedef TYPE_1__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DW_DLE_NONE ;
 void* STAILQ_FIRST (int *) ;
 int _dwarf_abbrev_gen (TYPE_1__*,int *) ;
 int _dwarf_arange_gen (TYPE_1__*,int *) ;
 int _dwarf_frame_gen (TYPE_1__*,int *) ;
 int _dwarf_info_gen (TYPE_1__*,int *) ;
 int _dwarf_lineno_gen (TYPE_1__*,int *) ;
 int _dwarf_macinfo_gen (TYPE_1__*,int *) ;
 int _dwarf_nametbl_gen (TYPE_1__*,char*,int ,int *) ;
 int _dwarf_reloc_gen (TYPE_1__*,int *) ;
 int _dwarf_strtab_gen (TYPE_1__*,int *) ;

int
_dwarf_generate_sections(Dwarf_P_Debug dbg, Dwarf_Error *error)
{
 int ret;


 if ((ret = _dwarf_info_gen(dbg, error)) != DW_DLE_NONE)
  return (ret);


 if ((ret = _dwarf_abbrev_gen(dbg, error)) != DW_DLE_NONE)
  return (ret);


 if ((ret = _dwarf_lineno_gen(dbg, error)) != DW_DLE_NONE)
  return (ret);


 if ((ret = _dwarf_frame_gen(dbg, error)) != DW_DLE_NONE)
  return (ret);


 if ((ret = _dwarf_arange_gen(dbg, error)) != DW_DLE_NONE)
  return (ret);


 if ((ret = _dwarf_macinfo_gen(dbg, error)) != DW_DLE_NONE)
  return (ret);


 if ((ret = _dwarf_nametbl_gen(dbg, ".debug_pubnames", dbg->dbgp_pubs,
     error)) != DW_DLE_NONE)
  return (ret);


 if ((ret = _dwarf_nametbl_gen(dbg, ".debug_weaknames", dbg->dbgp_weaks,
     error)) != DW_DLE_NONE)
  return (ret);


 if ((ret = _dwarf_nametbl_gen(dbg, ".debug_funcnames", dbg->dbgp_funcs,
     error)) != DW_DLE_NONE)
  return (ret);


 if ((ret = _dwarf_nametbl_gen(dbg, ".debug_typenames", dbg->dbgp_types,
     error)) != DW_DLE_NONE)
  return (ret);


 if ((ret = _dwarf_nametbl_gen(dbg, ".debug_varnames", dbg->dbgp_vars,
     error)) != DW_DLE_NONE)
  return (ret);


 if ((ret = _dwarf_strtab_gen(dbg, error)) != DW_DLE_NONE)
  return (ret);


 if ((ret = _dwarf_reloc_gen(dbg, error)) != DW_DLE_NONE)
  return (ret);


 dbg->dbgp_secpos = STAILQ_FIRST(&dbg->dbgp_seclist);
 dbg->dbgp_drspos = STAILQ_FIRST(&dbg->dbgp_drslist);

 return (DW_DLE_NONE);
}
