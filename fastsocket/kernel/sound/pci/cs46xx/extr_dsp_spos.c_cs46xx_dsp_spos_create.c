
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_cs46xx {int dummy; } ;
struct dsp_symbol_entry {int dummy; } ;
struct TYPE_4__ {int * data; scalar_t__ size; scalar_t__ offset; } ;
struct TYPE_3__ {int * symbols; scalar_t__ highest_frag_index; scalar_t__ nsymbols; } ;
struct dsp_spos_instance {int spdif_in_sample_rate; int dac_volume_right; int dac_volume_left; int spdif_input_volume_right; int spdif_input_volume_left; unsigned int spdif_csuv_default; unsigned int spdif_csuv_stream; int * modules; scalar_t__ nmodules; scalar_t__ ntask; scalar_t__ nscb; TYPE_2__ code; TYPE_1__ symbol_table; } ;
struct dsp_module_desc {int dummy; } ;


 int DSP_CODE_BYTE_SIZE ;
 int DSP_MAX_MODULES ;
 int DSP_MAX_SYMBOLS ;
 int GFP_KERNEL ;
 int SNDRV_PCM_DEFAULT_CON_SPDIF ;
 scalar_t__ _wrap_all_bits (int) ;
 int cs46xx_dsp_spos_destroy (struct snd_cs46xx*) ;
 int kfree (struct dsp_spos_instance*) ;
 void* kmalloc (int,int ) ;
 struct dsp_spos_instance* kzalloc (int,int ) ;
 int * vmalloc (int) ;

struct dsp_spos_instance *cs46xx_dsp_spos_create (struct snd_cs46xx * chip)
{
 struct dsp_spos_instance * ins = kzalloc(sizeof(struct dsp_spos_instance), GFP_KERNEL);

 if (ins == ((void*)0))
  return ((void*)0);


 ins->symbol_table.nsymbols = 0;
 ins->symbol_table.symbols = vmalloc(sizeof(struct dsp_symbol_entry) *
         DSP_MAX_SYMBOLS);
 ins->symbol_table.highest_frag_index = 0;

 if (ins->symbol_table.symbols == ((void*)0)) {
  cs46xx_dsp_spos_destroy(chip);
  goto error;
 }

 ins->code.offset = 0;
 ins->code.size = 0;
 ins->code.data = kmalloc(DSP_CODE_BYTE_SIZE, GFP_KERNEL);

 if (ins->code.data == ((void*)0)) {
  cs46xx_dsp_spos_destroy(chip);
  goto error;
 }

 ins->nscb = 0;
 ins->ntask = 0;

 ins->nmodules = 0;
 ins->modules = kmalloc(sizeof(struct dsp_module_desc) * DSP_MAX_MODULES, GFP_KERNEL);

 if (ins->modules == ((void*)0)) {
  cs46xx_dsp_spos_destroy(chip);
  goto error;
 }



 ins->spdif_in_sample_rate = 48000;


 ins->dac_volume_right = 0x8000;
 ins->dac_volume_left = 0x8000;
 ins->spdif_input_volume_right = 0x8000;
 ins->spdif_input_volume_left = 0x8000;



 ins->spdif_csuv_default =
  ins->spdif_csuv_stream =
                ((unsigned int)_wrap_all_bits( (SNDRV_PCM_DEFAULT_CON_SPDIF & 0xff)) << 24) |
                ((unsigned int)_wrap_all_bits( ((SNDRV_PCM_DEFAULT_CON_SPDIF >> 8) & 0xff)) << 16) |
                 (unsigned int)_wrap_all_bits( (SNDRV_PCM_DEFAULT_CON_SPDIF >> 24) & 0xff) |
                                     (1 << 13) | (1 << 12);

 return ins;

error:
 kfree(ins);
 return ((void*)0);
}
