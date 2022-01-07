
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_engine {int codec; } ;
typedef enum dma_state { ____Placeholder_dma_state } dma_state ;




 int snd_hda_codec_load_dsp_trigger (int ,int) ;
 int snd_printdd (char*,int) ;

__attribute__((used)) static int dma_set_state(struct dma_engine *dma, enum dma_state state)
{
 bool cmd;

 snd_printdd("dma_set_state state=%d\n", state);

 switch (state) {
 case 128:
  cmd = 0;
  break;
 case 129:
  cmd = 1;
  break;
 default:
  return 0;
 }

 snd_hda_codec_load_dsp_trigger(dma->codec, cmd);
 return 0;
}
