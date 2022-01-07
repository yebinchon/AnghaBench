
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int DIE_ID ;
 int DIE_NAME ;
 int FT_BOOLEAN ;
 int FT_CHAR ;
 int FT_COMPLEX ;
 int FT_DBL_PREC_COMPLEX ;
 int FT_DBL_PREC_FLOAT ;
 int FT_EXT_PREC_COMPLEX ;
 int FT_EXT_PREC_FLOAT ;
 int FT_FLOAT ;
 int FT_INTEGER ;
 int FT_LONG ;
 int FT_LONG_LONG ;
 int FT_SHORT ;
 int FT_SIGNED_CHAR ;
 int FT_SIGNED_INTEGER ;
 int FT_SIGNED_LONG ;
 int FT_SIGNED_LONG_LONG ;
 int FT_SIGNED_SHORT ;
 int FT_UNSIGNED_CHAR ;
 int FT_UNSIGNED_INTEGER ;
 int FT_UNSIGNED_LONG ;
 int FT_UNSIGNED_LONG_LONG ;
 int FT_UNSIGNED_SHORT ;
 int FT_VOID ;
 unsigned int FT_hi_user ;

 unsigned int FT_lo_user ;
 int complaint (int *,char*,int ,int ,unsigned int) ;
 int current_objfile ;
 struct type* dwarf_fundamental_type (int ,int ) ;
 struct type* lookup_pointer_type (struct type*) ;
 int symfile_complaints ;

__attribute__((used)) static struct type *
decode_fund_type (unsigned int fundtype)
{
  struct type *typep = ((void*)0);

  switch (fundtype)
    {

    case 128:
      typep = dwarf_fundamental_type (current_objfile, FT_VOID);
      break;

    case 151:
      typep = dwarf_fundamental_type (current_objfile, FT_BOOLEAN);
      break;

    case 140:
      typep = dwarf_fundamental_type (current_objfile, FT_VOID);
      typep = lookup_pointer_type (typep);
      break;

    case 150:
      typep = dwarf_fundamental_type (current_objfile, FT_CHAR);
      break;

    case 138:
      typep = dwarf_fundamental_type (current_objfile, FT_SIGNED_CHAR);
      break;

    case 133:
      typep = dwarf_fundamental_type (current_objfile, FT_UNSIGNED_CHAR);
      break;

    case 139:
      typep = dwarf_fundamental_type (current_objfile, FT_SHORT);
      break;

    case 134:
      typep = dwarf_fundamental_type (current_objfile, FT_SIGNED_SHORT);
      break;

    case 129:
      typep = dwarf_fundamental_type (current_objfile, FT_UNSIGNED_SHORT);
      break;

    case 143:
      typep = dwarf_fundamental_type (current_objfile, FT_INTEGER);
      break;

    case 137:
      typep = dwarf_fundamental_type (current_objfile, FT_SIGNED_INTEGER);
      break;

    case 132:
      typep = dwarf_fundamental_type (current_objfile, FT_UNSIGNED_INTEGER);
      break;

    case 142:
      typep = dwarf_fundamental_type (current_objfile, FT_LONG);
      break;

    case 136:
      typep = dwarf_fundamental_type (current_objfile, FT_SIGNED_LONG);
      break;

    case 131:
      typep = dwarf_fundamental_type (current_objfile, FT_UNSIGNED_LONG);
      break;

    case 141:
      typep = dwarf_fundamental_type (current_objfile, FT_LONG_LONG);
      break;

    case 135:
      typep = dwarf_fundamental_type (current_objfile, FT_SIGNED_LONG_LONG);
      break;

    case 130:
      typep = dwarf_fundamental_type (current_objfile, FT_UNSIGNED_LONG_LONG);
      break;

    case 144:
      typep = dwarf_fundamental_type (current_objfile, FT_FLOAT);
      break;

    case 147:
      typep = dwarf_fundamental_type (current_objfile, FT_DBL_PREC_FLOAT);
      break;

    case 145:
      typep = dwarf_fundamental_type (current_objfile, FT_EXT_PREC_FLOAT);
      break;

    case 149:
      typep = dwarf_fundamental_type (current_objfile, FT_COMPLEX);
      break;

    case 148:
      typep = dwarf_fundamental_type (current_objfile, FT_DBL_PREC_COMPLEX);
      break;

    case 146:
      typep = dwarf_fundamental_type (current_objfile, FT_EXT_PREC_COMPLEX);
      break;

    }

  if (typep == ((void*)0))
    {
      typep = dwarf_fundamental_type (current_objfile, FT_INTEGER);
      if (!(FT_lo_user <= fundtype && fundtype <= FT_hi_user))
 {
   complaint (&symfile_complaints,
       "DIE @ 0x%x \"%s\", unexpected fundamental type 0x%x",
       DIE_ID, DIE_NAME, fundtype);
 }
    }

  return (typep);
}
