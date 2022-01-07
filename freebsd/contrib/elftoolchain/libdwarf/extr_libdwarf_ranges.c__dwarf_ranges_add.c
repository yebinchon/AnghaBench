
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
struct _Dwarf_Rangelist {int dummy; } ;
struct TYPE_14__ {int dbg_rllist; } ;
struct TYPE_13__ {struct TYPE_13__* rl_rgarray; scalar_t__ rl_rglen; int rl_offset; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef int Dwarf_Section ;
typedef int Dwarf_Ranges ;
typedef TYPE_1__* Dwarf_Rangelist ;
typedef int Dwarf_Error ;
typedef TYPE_2__* Dwarf_Debug ;
typedef int Dwarf_CU ;


 int DWARF_SET_ERROR (TYPE_2__*,int *,int) ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int DW_DLE_NO_ENTRY ;
 int STAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int * _dwarf_find_section (TYPE_2__*,char*) ;
 int _dwarf_ranges_parse (TYPE_2__*,int ,int *,int ,TYPE_1__*,scalar_t__*) ;
 TYPE_1__* calloc (scalar_t__,int) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int rl_next ;

int
_dwarf_ranges_add(Dwarf_Debug dbg, Dwarf_CU cu, uint64_t off,
    Dwarf_Rangelist *ret_rl, Dwarf_Error *error)
{
 Dwarf_Section *ds;
 Dwarf_Rangelist rl;
 Dwarf_Unsigned cnt;
 int ret;

 if ((ds = _dwarf_find_section(dbg, ".debug_ranges")) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLE_NO_ENTRY);
 }

 if ((rl = malloc(sizeof(struct _Dwarf_Rangelist))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }

 rl->rl_offset = off;

 ret = _dwarf_ranges_parse(dbg, cu, ds, off, ((void*)0), &cnt);
 if (ret != DW_DLE_NONE) {
  free(rl);
  return (ret);
 }

 rl->rl_rglen = cnt;
 if (cnt != 0) {
  if ((rl->rl_rgarray = calloc(cnt, sizeof(Dwarf_Ranges))) ==
      ((void*)0)) {
   free(rl);
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   return (DW_DLE_MEMORY);
  }

  ret = _dwarf_ranges_parse(dbg, cu, ds, off, rl->rl_rgarray,
      ((void*)0));
  if (ret != DW_DLE_NONE) {
   free(rl->rl_rgarray);
   free(rl);
   return (ret);
  }
 } else
  rl->rl_rgarray = ((void*)0);

 STAILQ_INSERT_TAIL(&dbg->dbg_rllist, rl, rl_next);
 *ret_rl = rl;

 return (DW_DLE_NONE);
}
