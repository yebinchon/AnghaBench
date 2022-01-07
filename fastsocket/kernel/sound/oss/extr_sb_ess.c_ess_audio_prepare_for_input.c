
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int channels; scalar_t__ trigger_bits; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_9__ {TYPE_1__* devc; } ;


 int DSP_CMD_SPKOFF ;
 TYPE_7__** audio_devs ;
 int ess_change (TYPE_1__*,int,int,int) ;
 int ess_exec_commands (TYPE_1__*,int ) ;
 int ess_inp_cmds ;
 int ess_speed (TYPE_1__*,int) ;
 int ess_write (TYPE_1__*,int,int) ;
 int sb_dsp_command (TYPE_1__*,int ) ;

__attribute__((used)) static int ess_audio_prepare_for_input(int dev, int bsize, int bcount)
{
 sb_devc *devc = audio_devs[dev]->devc;

 ess_speed(devc, 1);

 sb_dsp_command(devc, DSP_CMD_SPKOFF);

 ess_write (devc, 0xb8, 0x0e);
 ess_change (devc, 0xa8, 0x03, 3 - devc->channels);
 ess_write (devc, 0xb9, 2);

 ess_exec_commands (devc, ess_inp_cmds);

 ess_change (devc, 0xb1, 0xf0, 0x50);
 ess_change (devc, 0xb2, 0xf0, 0x50);

 devc->trigger_bits = 0;
 return 0;
}
