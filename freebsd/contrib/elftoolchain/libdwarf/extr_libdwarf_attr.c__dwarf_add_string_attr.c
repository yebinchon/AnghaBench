
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* u; int at_form; int at_attrib; TYPE_2__* at_die; } ;
struct TYPE_12__ {int die_attr; int * die_dbg; } ;
struct TYPE_11__ {scalar_t__ u64; scalar_t__ s; } ;
typedef TYPE_2__* Dwarf_P_Die ;
typedef TYPE_3__* Dwarf_P_Attribute ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;
typedef TYPE_3__* Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NONE ;
 int DW_FORM_strp ;
 int STAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int _dwarf_attr_alloc (TYPE_2__*,TYPE_3__**,int *) ;
 int _dwarf_strtab_add (int *,char*,scalar_t__*,int *) ;
 scalar_t__ _dwarf_strtab_get_table (int *) ;
 int assert (int ) ;
 int at_next ;
 int free (TYPE_3__*) ;

int
_dwarf_add_string_attr(Dwarf_P_Die die, Dwarf_P_Attribute *atp, Dwarf_Half attr,
    char *string, Dwarf_Error *error)
{
 Dwarf_Attribute at;
 Dwarf_Debug dbg;
 int ret;

 dbg = die != ((void*)0) ? die->die_dbg : ((void*)0);

 assert(atp != ((void*)0));

 if (die == ((void*)0) || string == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLE_ARGUMENT);
 }

 if ((ret = _dwarf_attr_alloc(die, &at, error)) != DW_DLE_NONE)
  return (ret);

 at->at_die = die;
 at->at_attrib = attr;
 at->at_form = DW_FORM_strp;
 if ((ret = _dwarf_strtab_add(dbg, string, &at->u[0].u64,
     error)) != DW_DLE_NONE) {
  free(at);
  return (ret);
 }
 at->u[1].s = _dwarf_strtab_get_table(dbg) + at->u[0].u64;

 *atp = at;

 STAILQ_INSERT_TAIL(&die->die_attr, at, at_next);

 return (DW_DLE_NONE);
}
