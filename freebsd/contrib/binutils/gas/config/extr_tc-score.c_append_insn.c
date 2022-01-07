
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_2__ {int * error; int str; } ;


 scalar_t__ FAIL ;
 int SUCCESS ;
 int _ (char*) ;
 int as_bad (int ,int *,int ) ;
 TYPE_1__ inst ;
 int parse_16_32_inst (char*,int ) ;

__attribute__((used)) static int
append_insn (char *str, bfd_boolean gen_frag_p)
{
  int retval = SUCCESS;

  parse_16_32_inst (str, gen_frag_p);

  if (inst.error)
    {
      retval = (int) FAIL;
      as_bad (_("%s -- `%s'"), inst.error, inst.str);
      inst.error = ((void*)0);
    }

  return retval;
}
