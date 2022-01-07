
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nsymbols; int highest_frag_index; TYPE_1__* symbols; } ;
struct dsp_spos_instance {TYPE_2__ symbol_table; } ;
struct TYPE_3__ {scalar_t__ deleted; } ;



__attribute__((used)) static int find_free_symbol_index (struct dsp_spos_instance * ins)
{
 int index = ins->symbol_table.nsymbols,i;

 for (i = ins->symbol_table.highest_frag_index; i < ins->symbol_table.nsymbols; ++i) {
  if (ins->symbol_table.symbols[i].deleted) {
   index = i;
   break;
  }
 }

 return index;
}
