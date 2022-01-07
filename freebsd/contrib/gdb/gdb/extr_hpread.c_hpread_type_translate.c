
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int bitlength; int immediate; } ;
struct TYPE_5__ {TYPE_1__ dntti; } ;
typedef TYPE_2__ dnttpointer ;


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
 int FT_STRING ;
 int FT_TEMPLATE_ARG ;
 int FT_UNSIGNED_CHAR ;
 int FT_UNSIGNED_INTEGER ;
 int FT_UNSIGNED_LONG ;
 int FT_UNSIGNED_LONG_LONG ;
 int FT_UNSIGNED_SHORT ;
 int FT_VOID ;
 int error (char*) ;
 int warning (char*) ;

__attribute__((used)) static int
hpread_type_translate (dnttpointer typep)
{
  if (!typep.dntti.immediate)
    {
      error ("error in hpread_type_translate\n.");
      return FT_VOID;
    }

  switch (typep.dntti.type)
    {
    case 155:
    case 154:
    case 153:
      return FT_BOOLEAN;
    case 152:

    case 128:
      return FT_CHAR;
    case 143:
      if (typep.dntti.bitlength <= 8)
 return FT_SIGNED_CHAR;
      if (typep.dntti.bitlength <= 16)
 return FT_SHORT;
      if (typep.dntti.bitlength <= 32)
 return FT_INTEGER;
      return FT_LONG_LONG;
    case 141:
      if (typep.dntti.bitlength <= 8)
 return FT_SIGNED_CHAR;
      return FT_LONG;
    case 130:
      if (typep.dntti.bitlength <= 8)
 return FT_UNSIGNED_CHAR;
      if (typep.dntti.bitlength <= 16)
 return FT_UNSIGNED_SHORT;
      if (typep.dntti.bitlength <= 32)
 return FT_UNSIGNED_LONG;
      return FT_UNSIGNED_LONG_LONG;
    case 131:
      if (typep.dntti.bitlength <= 8)
 return FT_UNSIGNED_CHAR;
      if (typep.dntti.bitlength <= 16)
 return FT_UNSIGNED_SHORT;
      if (typep.dntti.bitlength <= 32)
 return FT_UNSIGNED_INTEGER;
      return FT_UNSIGNED_LONG_LONG;
    case 136:
    case 135:
    case 149:
      if (typep.dntti.bitlength == 64)
 return FT_DBL_PREC_FLOAT;
      if (typep.dntti.bitlength == 128)
 return FT_EXT_PREC_FLOAT;
      return FT_FLOAT;
    case 151:
    case 150:
      if (typep.dntti.bitlength == 128)
 return FT_DBL_PREC_COMPLEX;
      if (typep.dntti.bitlength == 192)
 return FT_EXT_PREC_COMPLEX;
      return FT_COMPLEX;
    case 129:
      return FT_VOID;
    case 134:
    case 140:
    case 146:
    case 138:
    case 139:
    case 147:
    case 145:
      return FT_STRING;
    case 133:
      return FT_TEMPLATE_ARG;
    case 132:
    case 148:
    case 137:
    case 156:
    case 144:
    case 142:
    default:
      warning ("hpread_type_translate: unhandled type code.\n");
      return FT_VOID;
    }
}
