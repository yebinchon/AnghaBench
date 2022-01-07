
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct snd_cs46xx {int dummy; } ;
struct dsp_scb_descriptor {int dummy; } ;
struct TYPE_4__ {int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_3__ {int member_3; int member_2; int member_1; int member_0; } ;
struct dsp_codec_output_scb {int member_10; int member_11; int member_13; int member_12; int member_9; int member_8; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; TYPE_2__ member_1; TYPE_1__ member_0; } ;


 int NULL_SCB_ADDR ;
 struct dsp_scb_descriptor* cs46xx_dsp_create_generic_scb (struct snd_cs46xx*,char*,int *,int ,char*,struct dsp_scb_descriptor*,int) ;

struct dsp_scb_descriptor *
cs46xx_dsp_create_codec_out_scb(struct snd_cs46xx * chip, char * codec_name,
                                u16 channel_disp, u16 fifo_addr, u16 child_scb_addr,
                                u32 dest, struct dsp_scb_descriptor * parent_scb,
                                int scb_child_type)
{
 struct dsp_scb_descriptor * scb;

 struct dsp_codec_output_scb codec_out_scb = {
  { 0,
    0,
    0,
    0
  },
  {
   0,
   0,
   0,
   0,
   0
  },
  0,0,
  0,NULL_SCB_ADDR,
  0,
  0,
  channel_disp,fifo_addr,
  0x0000,0x0080,
  0,child_scb_addr
 };


 scb = cs46xx_dsp_create_generic_scb(chip,codec_name,(u32 *)&codec_out_scb,
         dest,"S16_CODECOUTPUTTASK",parent_scb,
         scb_child_type);

 return scb;
}
