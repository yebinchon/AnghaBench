
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mips_cl_insn {int dummy; } ;
struct TYPE_2__ {int sequence; } ;


 unsigned int ARRAY_SIZE (struct mips_cl_insn*) ;
 struct mips_cl_insn* history ;
 TYPE_1__ mips_relax ;

__attribute__((used)) static void
insert_into_history (unsigned int first, unsigned int n,
       const struct mips_cl_insn *insn)
{
  if (mips_relax.sequence != 2)
    {
      unsigned int i;

      for (i = ARRAY_SIZE (history); i-- > first;)
 if (i >= first + n)
   history[i] = history[i - n];
 else
   history[i] = *insn;
    }
}
