
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_cs46xx {int spos_mutex; struct dsp_spos_instance* dsp_spos_instance; } ;
struct TYPE_5__ {int symbols; } ;
struct TYPE_4__ {struct dsp_spos_instance* data; } ;
struct dsp_spos_instance {int nscb; struct dsp_spos_instance* modules; TYPE_2__ symbol_table; TYPE_1__ code; TYPE_3__* scbs; } ;
struct TYPE_6__ {scalar_t__ deleted; } ;


 int cs46xx_dsp_proc_free_scb_desc (TYPE_3__*) ;
 int kfree (struct dsp_spos_instance*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int vfree (int ) ;

void cs46xx_dsp_spos_destroy (struct snd_cs46xx * chip)
{
 int i;
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;

 if (snd_BUG_ON(!ins))
  return;

 mutex_lock(&chip->spos_mutex);
 for (i = 0; i < ins->nscb; ++i) {
  if (ins->scbs[i].deleted) continue;

  cs46xx_dsp_proc_free_scb_desc ( (ins->scbs + i) );
 }

 kfree(ins->code.data);
 vfree(ins->symbol_table.symbols);
 kfree(ins->modules);
 kfree(ins);
 mutex_unlock(&chip->spos_mutex);
}
