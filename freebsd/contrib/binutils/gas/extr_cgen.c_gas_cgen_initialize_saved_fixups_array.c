
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_fixups_in_chain; } ;


 int MAX_SAVED_FIXUP_CHAINS ;
 TYPE_1__* stored_fixups ;

void
gas_cgen_initialize_saved_fixups_array ()
{
  int i = 0;

  while (i < MAX_SAVED_FIXUP_CHAINS)
    stored_fixups[i++].num_fixups_in_chain = 0;
}
