
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct objfile {int dummy; } ;
struct dwarf2_cu {struct objfile* objfile; } ;
 int FT_BOOLEAN ;
 int FT_COMPLEX ;
 int FT_DBL_PREC_COMPLEX ;
 int FT_DBL_PREC_FLOAT ;
 int FT_FLOAT ;
 int FT_SIGNED_CHAR ;
 int FT_SIGNED_INTEGER ;
 int FT_SIGNED_SHORT ;
 int FT_UNSIGNED_CHAR ;
 int FT_UNSIGNED_INTEGER ;
 int FT_UNSIGNED_SHORT ;
 int FT_VOID ;
 struct type* dwarf2_fundamental_type (struct objfile*,int ,struct dwarf2_cu*) ;

__attribute__((used)) static struct type *
dwarf_base_type (int encoding, int size, struct dwarf2_cu *cu)
{
  struct objfile *objfile = cu->objfile;



  struct type *type;
  switch (encoding)
    {
    case 135:
      type = dwarf2_fundamental_type (objfile, FT_VOID, cu);
      return type;
    case 134:
      type = dwarf2_fundamental_type (objfile, FT_BOOLEAN, cu);
      return type;
    case 133:
      if (size == 16)
 {
   type = dwarf2_fundamental_type (objfile, FT_DBL_PREC_COMPLEX, cu);
 }
      else
 {
   type = dwarf2_fundamental_type (objfile, FT_COMPLEX, cu);
 }
      return type;
    case 132:
      if (size == 8)
 {
   type = dwarf2_fundamental_type (objfile, FT_DBL_PREC_FLOAT, cu);
 }
      else
 {
   type = dwarf2_fundamental_type (objfile, FT_FLOAT, cu);
 }
      return type;
    case 131:
      switch (size)
 {
 case 1:
   type = dwarf2_fundamental_type (objfile, FT_SIGNED_CHAR, cu);
   break;
 case 2:
   type = dwarf2_fundamental_type (objfile, FT_SIGNED_SHORT, cu);
   break;
 default:
 case 4:
   type = dwarf2_fundamental_type (objfile, FT_SIGNED_INTEGER, cu);
   break;
 }
      return type;
    case 130:
      type = dwarf2_fundamental_type (objfile, FT_SIGNED_CHAR, cu);
      return type;
    case 129:
      switch (size)
 {
 case 1:
   type = dwarf2_fundamental_type (objfile, FT_UNSIGNED_CHAR, cu);
   break;
 case 2:
   type = dwarf2_fundamental_type (objfile, FT_UNSIGNED_SHORT, cu);
   break;
 default:
 case 4:
   type = dwarf2_fundamental_type (objfile, FT_UNSIGNED_INTEGER, cu);
   break;
 }
      return type;
    case 128:
      type = dwarf2_fundamental_type (objfile, FT_UNSIGNED_CHAR, cu);
      return type;
    default:
      type = dwarf2_fundamental_type (objfile, FT_SIGNED_INTEGER, cu);
      return type;
    }
}
