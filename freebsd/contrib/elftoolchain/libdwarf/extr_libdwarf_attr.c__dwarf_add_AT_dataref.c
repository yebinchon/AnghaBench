
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {char const* at_relsec; TYPE_1__* u; void* at_relsym; int at_form; int at_attrib; TYPE_2__* at_die; } ;
struct TYPE_14__ {int dbg_pointer_size; } ;
struct TYPE_13__ {int die_attr; } ;
struct TYPE_12__ {void* u64; } ;
typedef void* Dwarf_Unsigned ;
typedef TYPE_2__* Dwarf_P_Die ;
typedef TYPE_3__* Dwarf_P_Debug ;
typedef TYPE_4__* Dwarf_P_Attribute ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef TYPE_4__* Dwarf_Attribute ;


 int DW_DLE_NONE ;
 int DW_FORM_data4 ;
 int DW_FORM_data8 ;
 int STAILQ_INSERT_TAIL (int *,TYPE_4__*,int ) ;
 int _dwarf_attr_alloc (TYPE_2__*,TYPE_4__**,int *) ;
 int assert (int) ;
 int at_next ;

int
_dwarf_add_AT_dataref(Dwarf_P_Debug dbg, Dwarf_P_Die die, Dwarf_Half attr,
    Dwarf_Unsigned pc_value, Dwarf_Unsigned sym_index, const char *secname,
    Dwarf_P_Attribute *atp, Dwarf_Error *error)
{
 Dwarf_Attribute at;
 int ret;

 assert(dbg != ((void*)0) && die != ((void*)0));

 if ((ret = _dwarf_attr_alloc(die, &at, error)) != DW_DLE_NONE)
  return (ret);

 at->at_die = die;
 at->at_attrib = attr;
 if (dbg->dbg_pointer_size == 4)
  at->at_form = DW_FORM_data4;
 else
  at->at_form = DW_FORM_data8;
 at->at_relsym = sym_index;
 at->at_relsec = secname;
 at->u[0].u64 = pc_value;

 STAILQ_INSERT_TAIL(&die->die_attr, at, at_next);

 if (atp)
  *atp = at;

 return (DW_DLE_NONE);
}
