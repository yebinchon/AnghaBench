
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef scalar_t__ LONGEST ;


 scalar_t__ DEPRECATED_STREQ (char*,int ) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ENUM ;
 scalar_t__ TYPE_FIELD_BITPOS (struct type*,int) ;
 int TYPE_FIELD_NAME (struct type*,int) ;
 int TYPE_NFIELDS (struct type*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static LONGEST
convert_char_literal (struct type* type, LONGEST val)
{
  char name[7];
  int f;

  if (type == ((void*)0) || TYPE_CODE (type) != TYPE_CODE_ENUM)
    return val;
  sprintf (name, "QU%02x", (int) val);
  for (f = 0; f < TYPE_NFIELDS (type); f += 1)
    {
      if (DEPRECATED_STREQ (name, TYPE_FIELD_NAME (type, f)))
 return TYPE_FIELD_BITPOS (type, f);
    }
  return val;
}
