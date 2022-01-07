
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct readelf {int dbg; int cu_ver; int cu_osize; int cu_psize; } ;
struct TYPE_5__ {int ld_cents; struct TYPE_5__* ld_s; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef TYPE_1__ Dwarf_Locdesc ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;


 int DW_DLA_LOCDESC ;
 int DW_DLA_LOC_BLOCK ;
 scalar_t__ DW_DLV_OK ;
 int dump_dwarf_loc (struct readelf*,TYPE_1__*) ;
 int dwarf_dealloc (int ,TYPE_1__*,int ) ;
 int dwarf_errmsg (int ) ;
 scalar_t__ dwarf_loclist_from_expr_b (int ,int *,int ,int ,int ,int ,TYPE_1__**,int *,int *) ;
 int printf (char*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
dump_dwarf_block(struct readelf *re, uint8_t *b, Dwarf_Unsigned len)
{
 Dwarf_Locdesc *llbuf;
 Dwarf_Signed lcnt;
 Dwarf_Error de;
 int i;

 if (dwarf_loclist_from_expr_b(re->dbg, b, len, re->cu_psize,
     re->cu_osize, re->cu_ver, &llbuf, &lcnt, &de) != DW_DLV_OK) {
  warnx("dwarf_loclist_form_expr_b: %s", dwarf_errmsg(de));
  return;
 }

 for (i = 0; (Dwarf_Half) i < llbuf->ld_cents; i++) {
  dump_dwarf_loc(re, &llbuf->ld_s[i]);
  if (i < llbuf->ld_cents - 1)
   printf("; ");
 }

 dwarf_dealloc(re->dbg, llbuf->ld_s, DW_DLA_LOC_BLOCK);
 dwarf_dealloc(re->dbg, llbuf, DW_DLA_LOCDESC);
}
