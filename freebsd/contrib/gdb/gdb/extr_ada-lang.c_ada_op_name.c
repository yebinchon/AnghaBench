
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
struct TYPE_2__ {int op; char const* demangled; int * mangled; } ;


 TYPE_1__* ada_opname_table ;
 int error (char*) ;

__attribute__((used)) static const char *
ada_op_name (enum exp_opcode op)
{
  int i;

  for (i = 0; ada_opname_table[i].mangled != ((void*)0); i += 1)
    {
      if (ada_opname_table[i].op == op)
 return ada_opname_table[i].demangled;
    }
  error ("Could not find operator name for opcode");
}
