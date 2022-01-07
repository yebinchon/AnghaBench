
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct snd_cs46xx {int dummy; } ;
struct dsp_scb_descriptor {int dummy; } ;
struct TYPE_2__ {int member_2; int member_1; int member_0; } ;
struct dsp_asynch_fg_tx_scb {int member_0; int member_1; int member_2; int member_3; int member_5; int member_10; int member_17; int member_18; int member_19; int member_20; int member_21; int member_22; scalar_t__ member_16; scalar_t__ member_15; int member_14; int member_13; int member_12; TYPE_1__ member_11; int member_9; int member_8; int member_7; int member_6; int member_4; } ;


 scalar_t__ AFGTxAccumPhi ;
 scalar_t__ RSCONFIG_MODULO_256 ;
 scalar_t__ RSCONFIG_SAMPLE_16STEREO ;
 struct dsp_scb_descriptor* cs46xx_dsp_create_generic_scb (struct snd_cs46xx*,char*,scalar_t__*,scalar_t__,char*,struct dsp_scb_descriptor*,int) ;

__attribute__((used)) static struct dsp_scb_descriptor *
cs46xx_dsp_create_asynch_fg_tx_scb(struct snd_cs46xx * chip, char * scb_name, u32 dest,
                                   u16 hfg_scb_address,
                                   u16 asynch_buffer_address,
                                   struct dsp_scb_descriptor * parent_scb,
                                   int scb_child_type)
{

 struct dsp_scb_descriptor * scb;

 struct dsp_asynch_fg_tx_scb asynch_fg_tx_scb = {
  0xfc00,0x03ff,
  0x0058,0x0028,

  0,hfg_scb_address,
  0,0,
  0,
  0,0x2aab,

  {
   0,
   0,
   0
  },

  0,0,
  0,dest + AFGTxAccumPhi,

  RSCONFIG_SAMPLE_16STEREO + RSCONFIG_MODULO_256,
  (asynch_buffer_address) << 0x10,




  0x18000000,
  0x8000,0x8000,
  0x8000,0x8000
 };

 scb = cs46xx_dsp_create_generic_scb(chip,scb_name,(u32 *)&asynch_fg_tx_scb,
         dest,"ASYNCHFGTXCODE",parent_scb,
         scb_child_type);

 return scb;
}
