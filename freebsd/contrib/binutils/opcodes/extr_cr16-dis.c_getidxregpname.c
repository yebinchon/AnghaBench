
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; char* name; } ;
typedef TYPE_1__ reg_entry ;
typedef int reg ;


 scalar_t__ CR16_RP_REGTYPE ;
 char* ILLEGAL ;
 TYPE_1__* cr16_regptab ;

__attribute__((used)) static char *
getidxregpname (reg r)
{
  const reg_entry *reg;

  switch (r)
   {
   case 0: r = 0; break;
   case 1: r = 2; break;
   case 2: r = 4; break;
   case 3: r = 6; break;
   case 4: r = 8; break;
   case 5: r = 10; break;
   case 6: r = 3; break;
   case 7: r = 5; break;
   default:
     break;
   }

  reg = cr16_regptab + r;

  if (reg->type != CR16_RP_REGTYPE)
    return ILLEGAL;

  return reg->name;
}
