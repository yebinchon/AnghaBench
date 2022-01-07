
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cs46xx {struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_symbol_entry {int symbol_type; int symbol_name; scalar_t__ deleted; } ;
struct TYPE_2__ {int nsymbols; struct dsp_symbol_entry* symbols; } ;
struct dsp_spos_instance {TYPE_1__ symbol_table; } ;


 int printk (char*,char*,int) ;
 int strcmp (int ,char*) ;

struct dsp_symbol_entry *
cs46xx_dsp_lookup_symbol (struct snd_cs46xx * chip, char * symbol_name, int symbol_type)
{
 int i;
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;

 for ( i = 0; i < ins->symbol_table.nsymbols; ++i ) {

  if (ins->symbol_table.symbols[i].deleted)
   continue;

  if (!strcmp(ins->symbol_table.symbols[i].symbol_name,symbol_name) &&
      ins->symbol_table.symbols[i].symbol_type == symbol_type) {
   return (ins->symbol_table.symbols + i);
  }
 }






 return ((void*)0);
}
