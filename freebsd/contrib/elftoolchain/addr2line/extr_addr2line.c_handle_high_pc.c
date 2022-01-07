
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Dwarf_Unsigned ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef int Dwarf_Die ;
typedef int Dwarf_Attribute ;


 int DW_AT_high_pc ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 scalar_t__ DW_FORM_CLASS_CONSTANT ;
 int dwarf_attr (int ,int ,int *,int *) ;
 int dwarf_errmsg (int ) ;
 scalar_t__ dwarf_get_form_class (int,int ,int ,int ) ;
 int dwarf_whatform (int ,int *,int *) ;
 int warnx (char*,int ) ;

__attribute__((used)) static int
handle_high_pc(Dwarf_Die die, Dwarf_Unsigned lopc, Dwarf_Unsigned *hipc)
{
 Dwarf_Error de;
 Dwarf_Half form;
 Dwarf_Attribute at;
 int ret;

 ret = dwarf_attr(die, DW_AT_high_pc, &at, &de);
 if (ret == DW_DLV_ERROR) {
  warnx("dwarf_attr failed: %s", dwarf_errmsg(de));
  return (ret);
 }
 ret = dwarf_whatform(at, &form, &de);
 if (ret == DW_DLV_ERROR) {
  warnx("dwarf_whatform failed: %s", dwarf_errmsg(de));
  return (ret);
 }
 if (dwarf_get_form_class(2, 0, 0, form) == DW_FORM_CLASS_CONSTANT)
  *hipc += lopc;

 return (DW_DLV_OK);
}
