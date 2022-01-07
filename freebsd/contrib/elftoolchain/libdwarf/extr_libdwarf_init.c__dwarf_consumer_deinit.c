
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ dbg_mode; int dbg_section; int dbg_types; int dbg_vars; int dbg_funcs; int dbg_weaks; int dbg_pubtypes; int dbg_globals; } ;
typedef TYPE_1__* Dwarf_Debug ;


 scalar_t__ DW_DLC_READ ;
 int _dwarf_arange_cleanup (TYPE_1__*) ;
 int _dwarf_frame_cleanup (TYPE_1__*) ;
 int _dwarf_info_cleanup (TYPE_1__*) ;
 int _dwarf_macinfo_cleanup (TYPE_1__*) ;
 int _dwarf_nametbl_cleanup (int *) ;
 int _dwarf_ranges_cleanup (TYPE_1__*) ;
 int _dwarf_strtab_cleanup (TYPE_1__*) ;
 int assert (int) ;
 int free (int ) ;

__attribute__((used)) static void
_dwarf_consumer_deinit(Dwarf_Debug dbg)
{

 assert(dbg != ((void*)0) && dbg->dbg_mode == DW_DLC_READ);

 _dwarf_info_cleanup(dbg);
 _dwarf_ranges_cleanup(dbg);
 _dwarf_frame_cleanup(dbg);
 _dwarf_arange_cleanup(dbg);
 _dwarf_macinfo_cleanup(dbg);
 _dwarf_strtab_cleanup(dbg);
 _dwarf_nametbl_cleanup(&dbg->dbg_globals);
 _dwarf_nametbl_cleanup(&dbg->dbg_pubtypes);
 _dwarf_nametbl_cleanup(&dbg->dbg_weaks);
 _dwarf_nametbl_cleanup(&dbg->dbg_funcs);
 _dwarf_nametbl_cleanup(&dbg->dbg_vars);
 _dwarf_nametbl_cleanup(&dbg->dbg_types);

 free(dbg->dbg_section);
}
