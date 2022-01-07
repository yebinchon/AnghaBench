
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int li_inclen; int ** li_incdirs; } ;
struct TYPE_5__ {TYPE_2__* dbgp_lineinfo; } ;
typedef size_t Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_P_Debug ;
typedef TYPE_2__* Dwarf_LineInfo ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_1__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_MEMORY ;
 size_t DW_DLV_NOCOUNT ;
 int ** realloc (int **,int) ;
 int * strdup (char*) ;
 scalar_t__ strlen (char*) ;

Dwarf_Unsigned
dwarf_add_directory_decl(Dwarf_P_Debug dbg, char *name, Dwarf_Error *error)
{
 Dwarf_LineInfo li;

 if (dbg == ((void*)0) || name == ((void*)0) || strlen(name) == 0) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_NOCOUNT);
 }

 li = dbg->dbgp_lineinfo;

 li->li_incdirs = realloc(li->li_incdirs, (li->li_inclen + 1) *
     sizeof(char *));
 if (li->li_incdirs == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLV_NOCOUNT);
 }
 if ((li->li_incdirs[li->li_inclen] = strdup(name)) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLV_NOCOUNT);
 }

 return (++li->li_inclen);
}
