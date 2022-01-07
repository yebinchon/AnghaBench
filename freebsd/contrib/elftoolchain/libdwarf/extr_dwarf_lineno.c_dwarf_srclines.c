
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* u; } ;
struct TYPE_13__ {TYPE_2__* cu_lineinfo; } ;
struct TYPE_12__ {TYPE_4__* die_cu; int * die_dbg; } ;
struct TYPE_11__ {int ** li_lnarray; int li_lnlist; scalar_t__ li_lnlen; } ;
struct TYPE_10__ {int u64; } ;
typedef int Dwarf_Signed ;
typedef TYPE_2__* Dwarf_LineInfo ;
typedef int * Dwarf_Line ;
typedef int Dwarf_Error ;
typedef TYPE_3__* Dwarf_Die ;
typedef int * Dwarf_Debug ;
typedef TYPE_4__* Dwarf_CU ;
typedef TYPE_5__* Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_AT_stmt_list ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_MEMORY ;
 scalar_t__ DW_DLE_NONE ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int * STAILQ_FIRST (int *) ;
 int * STAILQ_NEXT (int *,int ) ;
 TYPE_5__* _dwarf_attr_find (TYPE_3__*,int ) ;
 scalar_t__ _dwarf_lineno_init (TYPE_3__*,int ,int *) ;
 int ln_next ;
 int ** malloc (int) ;

int
dwarf_srclines(Dwarf_Die die, Dwarf_Line **linebuf, Dwarf_Signed *linecount,
    Dwarf_Error *error)
{
 Dwarf_LineInfo li;
 Dwarf_Debug dbg;
 Dwarf_Line ln;
 Dwarf_CU cu;
 Dwarf_Attribute at;
 int i;

 dbg = die != ((void*)0) ? die->die_dbg : ((void*)0);

 if (die == ((void*)0) || linebuf == ((void*)0) || linecount == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if ((at = _dwarf_attr_find(die, DW_AT_stmt_list)) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 cu = die->die_cu;
 if (cu->cu_lineinfo == ((void*)0)) {
  if (_dwarf_lineno_init(die, at->u[0].u64, error) !=
      DW_DLE_NONE)
   return (DW_DLV_ERROR);
 }
 if (cu->cu_lineinfo == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 li = cu->cu_lineinfo;
 *linecount = (Dwarf_Signed) li->li_lnlen;

 if (*linecount == 0) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 if (li->li_lnarray != ((void*)0)) {
  *linebuf = li->li_lnarray;
  return (DW_DLV_OK);
 }

 if ((li->li_lnarray = malloc(*linecount * sizeof(Dwarf_Line))) ==
     ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLV_ERROR);
 }

 for (i = 0, ln = STAILQ_FIRST(&li->li_lnlist);
      i < *linecount && ln != ((void*)0); i++, ln = STAILQ_NEXT(ln, ln_next))
  li->li_lnarray[i] = ln;

 *linebuf = li->li_lnarray;

 return (DW_DLV_OK);
}
