
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct _Dwarf_Line {int dummy; } ;
struct TYPE_10__ {scalar_t__ ln_symndx; int ln_addr; TYPE_2__* ln_li; } ;
struct TYPE_9__ {int li_lnlen; int li_lnlist; } ;
struct TYPE_8__ {TYPE_2__* dbgp_lineinfo; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_P_Debug ;
typedef TYPE_2__* Dwarf_LineInfo ;
typedef TYPE_3__* Dwarf_Line ;
typedef int Dwarf_Error ;
typedef int Dwarf_Addr ;


 int DWARF_SET_ERROR (TYPE_1__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_MEMORY ;
 scalar_t__ DW_DLV_NOCOUNT ;
 scalar_t__ DW_DLV_OK ;
 int STAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 TYPE_3__* calloc (int,int) ;
 int ln_next ;

Dwarf_Unsigned
dwarf_lne_set_address(Dwarf_P_Debug dbg, Dwarf_Addr offs, Dwarf_Unsigned symndx,
    Dwarf_Error *error)
{
 Dwarf_LineInfo li;
 Dwarf_Line ln;

 if (dbg == ((void*)0) || symndx == 0) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_NOCOUNT);
 }

 li = dbg->dbgp_lineinfo;

 if ((ln = calloc(1, sizeof(struct _Dwarf_Line))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLV_NOCOUNT);
 }
 ln->ln_li = li;
 ln->ln_addr = offs;
 ln->ln_symndx = symndx;
 STAILQ_INSERT_TAIL(&li->li_lnlist, ln, ln_next);
 li->li_lnlen++;

 return (DW_DLV_OK);
}
