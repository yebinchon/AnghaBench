
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct _Dwarf_P_Section {int dummy; } ;
struct TYPE_11__ {int dbgp_seccnt; int dbgp_seclist; } ;
struct TYPE_10__ {struct TYPE_10__* ds_name; scalar_t__ ds_cap; int * ds_data; } ;
typedef TYPE_1__* Dwarf_P_Section ;
typedef TYPE_2__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_2__*,int *,int) ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int STAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 scalar_t__ _SECTION_INIT_SIZE ;
 int assert (int) ;
 TYPE_1__* calloc (int,int) ;
 int ds_next ;
 int free (TYPE_1__*) ;
 int * malloc (size_t) ;
 TYPE_1__* strdup (char const*) ;

int
_dwarf_section_init(Dwarf_P_Debug dbg, Dwarf_P_Section *dsp, const char *name,
    int pseudo, Dwarf_Error *error)
{
 Dwarf_P_Section ds;

 assert(dbg != ((void*)0) && dsp != ((void*)0) && name != ((void*)0));

 if ((ds = calloc(1, sizeof(struct _Dwarf_P_Section))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }

 if ((ds->ds_name = strdup(name)) == ((void*)0)) {
  free(ds);
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }

 if (!pseudo) {
  ds->ds_cap = _SECTION_INIT_SIZE;
  if ((ds->ds_data = malloc((size_t) ds->ds_cap)) == ((void*)0)) {
   free(ds->ds_name);
   free(ds);
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   return (DW_DLE_MEMORY);
  }
  STAILQ_INSERT_TAIL(&dbg->dbgp_seclist, ds, ds_next);
  dbg->dbgp_seccnt++;
 }

 *dsp = ds;

 return (DW_DLE_NONE);
}
