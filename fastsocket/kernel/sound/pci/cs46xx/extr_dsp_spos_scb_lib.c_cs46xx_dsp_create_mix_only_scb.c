
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct snd_cs46xx {int dummy; } ;
struct dsp_scb_descriptor {int dummy; } ;
struct TYPE_4__ {int member_0; int member_1; int member_2; int member_3; } ;
struct TYPE_6__ {int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_5__ {int member_3; int member_2; int member_1; int member_0; } ;
struct dsp_mix_only_scb {int member_7; TYPE_1__ member_9; int member_8; scalar_t__ member_6; int member_5; int member_4; int member_3; int member_2; TYPE_3__ member_1; TYPE_2__ member_0; } ;


 scalar_t__ RSCONFIG_MODULO_32 ;
 scalar_t__ RSCONFIG_SAMPLE_16STEREO ;
 struct dsp_scb_descriptor* cs46xx_dsp_create_generic_scb (struct snd_cs46xx*,char*,int *,int ,char*,struct dsp_scb_descriptor*,int) ;

struct dsp_scb_descriptor *
cs46xx_dsp_create_mix_only_scb(struct snd_cs46xx * chip, char * scb_name,
                               u16 mix_buffer_addr, u32 dest,
                               struct dsp_scb_descriptor * parent_scb,
                               int scb_child_type)
{
 struct dsp_scb_descriptor * scb;

 struct dsp_mix_only_scb master_mix_scb = {
          { 0,
               0,
              mix_buffer_addr,
              0
             },
  {
            0,
            0,
            0,
            0,
            0x00000080
  },
          0,0,
          0,0,
          RSCONFIG_SAMPLE_16STEREO + RSCONFIG_MODULO_32,
          (mix_buffer_addr + (16 * 4)) << 0x10,
          0,
  {
           0x8000,0x8000,
           0x8000,0x8000
  }
 };


 scb = cs46xx_dsp_create_generic_scb(chip,scb_name,(u32 *)&master_mix_scb,
         dest,"S16_MIX",parent_scb,
         scb_child_type);
 return scb;
}
