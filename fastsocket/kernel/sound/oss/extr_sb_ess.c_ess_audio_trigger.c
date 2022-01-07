
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int irq_mode_16; int irq_mode; int trigger_bits; int trg_intrflag_16; int trg_bytes_16; int trg_buf_16; int trg_intrflag; int trg_bytes; int trg_buf; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_5__ {TYPE_1__* devc; } ;




 TYPE_3__** audio_devs ;
 int ess_audio_output_block (int,int ,int ,int ) ;
 int ess_audio_start_input (int,int ,int ,int ) ;
 int sb_dsp_command (TYPE_1__*,int) ;

__attribute__((used)) static void ess_audio_trigger(int dev, int bits)
{
 sb_devc *devc = audio_devs[dev]->devc;

 int bits_16 = bits & devc->irq_mode_16;
 bits &= devc->irq_mode;

 if (!bits && !bits_16) {

  sb_dsp_command(devc, 0xd0);
 }

 if (bits) {
  switch (devc->irq_mode)
  {
   case 129:
    ess_audio_start_input(dev, devc->trg_buf, devc->trg_bytes,
     devc->trg_intrflag);
    break;

   case 128:
    ess_audio_output_block(dev, devc->trg_buf, devc->trg_bytes,
     devc->trg_intrflag);
    break;
  }
 }

 if (bits_16) {
  switch (devc->irq_mode_16) {
  case 129:
   ess_audio_start_input(dev, devc->trg_buf_16, devc->trg_bytes_16,
     devc->trg_intrflag_16);
   break;

  case 128:
   ess_audio_output_block(dev, devc->trg_buf_16, devc->trg_bytes_16,
     devc->trg_intrflag_16);
   break;
  }
 }

 devc->trigger_bits = bits | bits_16;
}
