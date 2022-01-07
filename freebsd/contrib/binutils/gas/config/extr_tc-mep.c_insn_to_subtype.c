
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int insn; } ;


 unsigned int NUM_MAPPINGS ;
 int abort () ;
 TYPE_1__* subtype_mappings ;

__attribute__((used)) static int
insn_to_subtype (int insn)
{
  unsigned int i;
  for (i=0; i<NUM_MAPPINGS; i++)
    if (insn == subtype_mappings[i].insn)
      return i;
  abort ();
}
