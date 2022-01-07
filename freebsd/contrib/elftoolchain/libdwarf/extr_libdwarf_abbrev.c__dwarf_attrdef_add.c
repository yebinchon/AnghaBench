
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint64_t ;
struct _Dwarf_AttrDef {int dummy; } ;
struct TYPE_8__ {int ab_atnum; int ab_attrdef; } ;
struct TYPE_7__ {void* ad_offset; void* ad_form; void* ad_attrib; } ;
typedef int Dwarf_Error ;
typedef int Dwarf_Debug ;
typedef TYPE_1__* Dwarf_AttrDef ;
typedef TYPE_2__* Dwarf_Abbrev ;


 int DWARF_SET_ERROR (int ,int *,int) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int STAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int ad_next ;
 TYPE_1__* malloc (int) ;

int
_dwarf_attrdef_add(Dwarf_Debug dbg, Dwarf_Abbrev ab, uint64_t attr,
    uint64_t form, uint64_t adoff, Dwarf_AttrDef *adp, Dwarf_Error *error)
{
 Dwarf_AttrDef ad;

 if (ab == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLE_ARGUMENT);
 }

 if ((ad = malloc(sizeof(struct _Dwarf_AttrDef))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }


 ad->ad_attrib = attr;
 ad->ad_form = form;
 ad->ad_offset = adoff;


 STAILQ_INSERT_TAIL(&ab->ab_attrdef, ad, ad_next);


 ab->ab_atnum++;

 if (adp != ((void*)0))
  *adp = ad;

 return (DW_DLE_NONE);
}
