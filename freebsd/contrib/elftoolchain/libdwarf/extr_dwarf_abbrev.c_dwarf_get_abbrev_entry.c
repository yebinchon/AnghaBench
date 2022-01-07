
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_8__ {scalar_t__ ab_atnum; int ab_attrdef; } ;
struct TYPE_7__ {int ad_form; int ad_offset; int ad_attrib; } ;
typedef int Dwarf_Signed ;
typedef int Dwarf_Off ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_AttrDef ;
typedef TYPE_2__* Dwarf_Abbrev ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 TYPE_1__* STAILQ_FIRST (int *) ;
 TYPE_1__* STAILQ_NEXT (TYPE_1__*,int ) ;
 int ad_next ;
 int assert (int ) ;

int
dwarf_get_abbrev_entry(Dwarf_Abbrev abbrev, Dwarf_Signed ndx,
    Dwarf_Half *attr_num, Dwarf_Signed *form, Dwarf_Off *offset,
    Dwarf_Error *error)
{
 Dwarf_AttrDef ad;
 int i;

 if (abbrev == ((void*)0) || attr_num == ((void*)0) || form == ((void*)0) ||
     offset == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (ndx < 0 || (uint64_t) ndx >= abbrev->ab_atnum) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 ad = STAILQ_FIRST(&abbrev->ab_attrdef);
 for (i = 0; i < ndx && ad != ((void*)0); i++)
  ad = STAILQ_NEXT(ad, ad_next);

 assert(ad != ((void*)0));

 *attr_num = ad->ad_attrib;
 *form = ad->ad_form;
 *offset = ad->ad_offset;

 return (DW_DLV_OK);
}
