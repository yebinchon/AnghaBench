
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bits; unsigned long trg_buf; int trg_bytes; int trg_intrflag; unsigned long trg_buf_16; int trg_bytes_16; int trg_intrflag_16; void* irq_mode_16; void* irq_mode; int fullduplex; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_4__ {TYPE_1__* devc; } ;


 scalar_t__ AFMT_S16_LE ;
 void* IMODE_INPUT ;
 TYPE_2__** audio_devs ;

__attribute__((used)) static void sb_set_input_parms(int dev, unsigned long buf, int count, int intrflag)
{
 sb_devc *devc = audio_devs[dev]->devc;

 if (!devc->fullduplex || devc->bits != AFMT_S16_LE)
 {
  devc->trg_buf = buf;
  devc->trg_bytes = count;
  devc->trg_intrflag = intrflag;
  devc->irq_mode = IMODE_INPUT;
 }
 else
 {
  devc->trg_buf_16 = buf;
  devc->trg_bytes_16 = count;
  devc->trg_intrflag_16 = intrflag;
  devc->irq_mode_16 = IMODE_INPUT;
 }
}
