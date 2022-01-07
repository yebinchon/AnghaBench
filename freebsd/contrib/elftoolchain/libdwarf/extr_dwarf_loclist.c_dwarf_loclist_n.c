
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* die_cu; int * die_dbg; } ;
struct TYPE_9__ {int cu_version; } ;
struct TYPE_8__ {int at_attrib; int * at_ld; TYPE_5__* at_die; TYPE_1__* u; int at_form; } ;
struct TYPE_7__ {int u64; } ;
typedef int Dwarf_Signed ;
typedef int **** Dwarf_Locdesc ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;
typedef TYPE_2__* Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_ATTR_FORM_BAD ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int _dwarf_loc_add (TYPE_5__*,TYPE_2__*,int *) ;
 int _dwarf_loclist_find (int *,TYPE_4__*,int ,int *******,int*,int *,int *) ;
 void* calloc (int,int) ;
 int copy_locdesc (int *,int *****,int *,int *) ;
 int free (int ******) ;

int
dwarf_loclist_n(Dwarf_Attribute at, Dwarf_Locdesc ***llbuf,
    Dwarf_Signed *listlen, Dwarf_Error *error)
{
 Dwarf_Debug dbg;
 int ret;

 dbg = at != ((void*)0) ? at->at_die->die_dbg : ((void*)0);

 if (at == ((void*)0) || llbuf == ((void*)0) || listlen == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 switch (at->at_attrib) {
 case 142:
 case 138:
 case 141:
 case 144:
 case 143:
 case 140:
 case 139:
 case 137:
 case 136:
  switch (at->at_form) {
  case 131:
  case 130:






   if (at->at_die->die_cu->cu_version >= 4) {
    DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
    return (DW_DLV_NO_ENTRY);
   }

  case 128:
   ret = _dwarf_loclist_find(dbg, at->at_die->die_cu,
       at->u[0].u64, llbuf, listlen, ((void*)0), error);
   if (ret == DW_DLE_NO_ENTRY) {
    DWARF_SET_ERROR(dbg, error, ret);
    return (DW_DLV_NO_ENTRY);
   }
   if (ret != DW_DLE_NONE)
    return (DW_DLV_ERROR);
   return (DW_DLV_OK);
  case 135:
  case 134:
  case 133:
  case 132:
  case 129:
   if (at->at_ld == ((void*)0)) {
    ret = _dwarf_loc_add(at->at_die, at, error);
    if (ret != DW_DLE_NONE)
     return (DW_DLV_ERROR);
   }
   *llbuf = calloc(1, sizeof(Dwarf_Locdesc *));
   if (*llbuf == ((void*)0)) {
    DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
    return (DW_DLV_ERROR);
   }
   (*llbuf)[0] = calloc(1, sizeof(Dwarf_Locdesc));
   if ((*llbuf)[0] == ((void*)0)) {
    free(*llbuf);
    DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
    return (DW_DLV_ERROR);
   }
   if (copy_locdesc(dbg, (*llbuf)[0], at->at_ld, error) !=
       DW_DLE_NONE) {
    free((*llbuf)[0]);
    free(*llbuf);
    return (DW_DLV_ERROR);
   }
   *listlen = 1;
   return (DW_DLV_OK);
  default:

   DWARF_SET_ERROR(dbg, error, DW_DLE_ATTR_FORM_BAD);
   return (DW_DLV_NO_ENTRY);
  }
 default:

  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }
}
