
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
getregpname (reg r)
{
  const reg_entry *reg = cr16_regptab + r;

  if (reg->type != CR16_RP_REGTYPE)
    return ILLEGAL;

  return reg->name;
}
