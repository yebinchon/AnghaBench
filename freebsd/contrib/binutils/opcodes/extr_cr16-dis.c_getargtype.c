
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t operand_type ;
typedef int argtype ;
struct TYPE_2__ {int arg_type; } ;


 size_t MAX_OPRD ;
 TYPE_1__* cr16_optab ;
 int nullargs ;

__attribute__((used)) static argtype
getargtype (operand_type op)
{
  if (op < MAX_OPRD)
    return cr16_optab[op].arg_type;

  return nullargs;
}
