
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct _Dwarf_Attribute {int dummy; } ;
struct TYPE_14__ {scalar_t__ at_attrib; int at_form; TYPE_1__* u; } ;
struct TYPE_13__ {int die_name; int die_attr; } ;
struct TYPE_12__ {int s; } ;
typedef int Dwarf_Error ;
typedef TYPE_2__* Dwarf_Die ;
typedef TYPE_3__* Dwarf_Attribute ;


 scalar_t__ DW_AT_name ;
 int DW_DLE_NONE ;


 int STAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int _dwarf_attr_alloc (TYPE_2__*,TYPE_3__**,int *) ;
 int at_next ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;

__attribute__((used)) static int
_dwarf_attr_add(Dwarf_Die die, Dwarf_Attribute atref, Dwarf_Attribute *atp,
    Dwarf_Error *error)
{
 Dwarf_Attribute at;
 int ret;

 if ((ret = _dwarf_attr_alloc(die, &at, error)) != DW_DLE_NONE)
  return (ret);

 memcpy(at, atref, sizeof(struct _Dwarf_Attribute));

 STAILQ_INSERT_TAIL(&die->die_attr, at, at_next);


 if (at->at_attrib == DW_AT_name) {
  switch (at->at_form) {
  case 128:
   die->die_name = at->u[1].s;
   break;
  case 129:
   die->die_name = at->u[0].s;
   break;
  default:
   break;
  }
 }

 if (atp != ((void*)0))
  *atp = at;

 return (DW_DLE_NONE);
}
