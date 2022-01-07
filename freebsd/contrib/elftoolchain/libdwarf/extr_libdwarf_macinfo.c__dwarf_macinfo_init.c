
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct _Dwarf_MacroSet {int dummy; } ;
struct TYPE_14__ {int dbg_mslist; } ;
struct TYPE_13__ {int ms_cnt; int * ms_mdlist; } ;
struct TYPE_12__ {scalar_t__ ds_size; } ;
typedef int Dwarf_Unsigned ;
typedef TYPE_1__ Dwarf_Section ;
typedef int Dwarf_Macro_Details ;
typedef TYPE_2__* Dwarf_MacroSet ;
typedef int Dwarf_Error ;
typedef TYPE_3__* Dwarf_Debug ;


 int DWARF_SET_ERROR (TYPE_3__*,int *,int) ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int STAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 TYPE_1__* _dwarf_find_section (TYPE_3__*,char*) ;
 int _dwarf_macinfo_cleanup (TYPE_3__*) ;
 int _dwarf_macinfo_parse (TYPE_3__*,TYPE_1__*,scalar_t__*,int *,int*,int *) ;
 void* calloc (int,int) ;
 int ms_next ;

int
_dwarf_macinfo_init(Dwarf_Debug dbg, Dwarf_Error *error)
{
 Dwarf_MacroSet ms;
 Dwarf_Unsigned cnt;
 Dwarf_Section *ds;
 uint64_t offset, entry_off;
 int ret;

 if ((ds = _dwarf_find_section(dbg, ".debug_macinfo")) == ((void*)0))
  return (DW_DLE_NONE);

 offset = 0;
 while (offset < ds->ds_size) {

  entry_off = offset;

  ret = _dwarf_macinfo_parse(dbg, ds, &offset, ((void*)0), &cnt, error);
  if (ret != DW_DLE_NONE)
   return (ret);

  if (cnt == 0)
   break;

  if ((ms = calloc(1, sizeof(struct _Dwarf_MacroSet))) == ((void*)0)) {
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   ret = DW_DLE_MEMORY;
   goto fail_cleanup;
  }
  STAILQ_INSERT_TAIL(&dbg->dbg_mslist, ms, ms_next);

  if ((ms->ms_mdlist = calloc(cnt, sizeof(Dwarf_Macro_Details)))
      == ((void*)0)) {
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   ret = DW_DLE_MEMORY;
   goto fail_cleanup;
  }

  ms->ms_cnt = cnt;

  offset = entry_off;

  ret = _dwarf_macinfo_parse(dbg, ds, &offset, ms->ms_mdlist,
      ((void*)0), error);

  if (ret != DW_DLE_NONE) {
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   ret = DW_DLE_MEMORY;
   goto fail_cleanup;
  }
 }

 return (DW_DLE_NONE);

fail_cleanup:

 _dwarf_macinfo_cleanup(dbg);

 return (ret);
}
