
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tremfrq; } ;
struct TYPE_4__ {TYPE_1__ parm; } ;
struct snd_emux_voice {TYPE_2__ reg; int ch; } ;
struct snd_emu8000 {int dummy; } ;


 int EMU8000_TREMFRQ_WRITE (struct snd_emu8000*,int ,int ) ;

__attribute__((used)) static void
set_tremfreq(struct snd_emu8000 *hw, struct snd_emux_voice *vp)
{
 EMU8000_TREMFRQ_WRITE(hw, vp->ch, vp->reg.parm.tremfrq);
}
