
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ dbg_mode; int dbgp_vars; int dbgp_types; int dbgp_funcs; int dbgp_weaks; int dbgp_pubs; } ;
typedef TYPE_1__* Dwarf_P_Debug ;


 scalar_t__ DW_DLC_WRITE ;
 int _dwarf_arange_pro_cleanup (TYPE_1__*) ;
 int _dwarf_die_pro_cleanup (TYPE_1__*) ;
 int _dwarf_expr_cleanup (TYPE_1__*) ;
 int _dwarf_frame_pro_cleanup (TYPE_1__*) ;
 int _dwarf_info_pro_cleanup (TYPE_1__*) ;
 int _dwarf_lineno_pro_cleanup (TYPE_1__*) ;
 int _dwarf_macinfo_pro_cleanup (TYPE_1__*) ;
 int _dwarf_nametbl_pro_cleanup (int *) ;
 int _dwarf_reloc_cleanup (TYPE_1__*) ;
 int _dwarf_section_cleanup (TYPE_1__*) ;
 int _dwarf_strtab_cleanup (TYPE_1__*) ;
 int assert (int) ;

__attribute__((used)) static void
_dwarf_producer_deinit(Dwarf_P_Debug dbg)
{

 assert(dbg != ((void*)0) && dbg->dbg_mode == DW_DLC_WRITE);

 _dwarf_info_pro_cleanup(dbg);
 _dwarf_die_pro_cleanup(dbg);
 _dwarf_expr_cleanup(dbg);
 _dwarf_lineno_pro_cleanup(dbg);
 _dwarf_frame_pro_cleanup(dbg);
 _dwarf_arange_pro_cleanup(dbg);
 _dwarf_macinfo_pro_cleanup(dbg);
 _dwarf_strtab_cleanup(dbg);
 _dwarf_nametbl_pro_cleanup(&dbg->dbgp_pubs);
 _dwarf_nametbl_pro_cleanup(&dbg->dbgp_weaks);
 _dwarf_nametbl_pro_cleanup(&dbg->dbgp_funcs);
 _dwarf_nametbl_pro_cleanup(&dbg->dbgp_types);
 _dwarf_nametbl_pro_cleanup(&dbg->dbgp_vars);
 _dwarf_section_cleanup(dbg);
 _dwarf_reloc_cleanup(dbg);
}
