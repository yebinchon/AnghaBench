
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long trg_buf; int trg_bytes; int trg_intrflag; int irq_mode; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_4__ {TYPE_1__* devc; } ;


 int IMODE_INPUT ;
 TYPE_2__** audio_devs ;

__attribute__((used)) static void ess_set_input_parms
 (int dev, unsigned long buf, int count, int intrflag)
{
 sb_devc *devc = audio_devs[dev]->devc;

 devc->trg_buf = buf;
 devc->trg_bytes = count;
 devc->trg_intrflag = intrflag;
 devc->irq_mode = IMODE_INPUT;
}
