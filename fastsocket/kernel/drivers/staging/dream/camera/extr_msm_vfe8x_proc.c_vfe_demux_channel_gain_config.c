
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_demux_cfg {int ch2Gain; int ch1Gain; int ch0OddGain; int ch0EvenGain; } ;
struct vfe_cmd_demux_channel_gain_config {int ch2Gain; int ch1Gain; int ch0OddGain; int ch0EvenGain; } ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_DEMUX_GAIN_0 ;
 TYPE_1__* ctrl ;
 int memset (struct vfe_demux_cfg*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_demux_channel_gain_config(
 struct vfe_cmd_demux_channel_gain_config *in)
{
 struct vfe_demux_cfg cmd;

 memset(&cmd, 0, sizeof(cmd));

 cmd.ch0EvenGain = in->ch0EvenGain;
 cmd.ch0OddGain = in->ch0OddGain;
 cmd.ch1Gain = in->ch1Gain;
 cmd.ch2Gain = in->ch2Gain;

 vfe_prog_hw(ctrl->vfebase + VFE_DEMUX_GAIN_0,
  (uint32_t *)&cmd, sizeof(cmd));
}
