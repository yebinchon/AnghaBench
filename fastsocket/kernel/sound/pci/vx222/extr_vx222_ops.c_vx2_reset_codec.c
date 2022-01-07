
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int regCDSP; scalar_t__ type; int regSELMIC; } ;
struct snd_vx222 {int regCDSP; scalar_t__ type; int regSELMIC; } ;


 int AKM_CODEC_CLOCK_FORMAT_CMD ;
 int AKM_CODEC_MUTE_CMD ;
 int AKM_CODEC_POWER_CONTROL_CMD ;
 int AKM_CODEC_RESET_OFF_CMD ;
 int CDSP ;
 int MICRO_SELECT_INPUT_NORM ;
 int MICRO_SELECT_NOISE_T_52DB ;
 int MICRO_SELECT_PHANTOM_ALIM ;
 int MICRO_SELECT_PREAMPLI_G_0 ;
 int SELMIC ;
 int VX_CDSP_CODEC_RESET_MASK ;
 scalar_t__ VX_TYPE_BOARD ;
 scalar_t__ VX_TYPE_MIC ;
 int msleep (int) ;
 int vx2_write_codec_reg (struct vx_core*,int ) ;
 int vx_inl (struct vx_core*,int ) ;
 int vx_outl (struct vx_core*,int ,int) ;

__attribute__((used)) static void vx2_reset_codec(struct vx_core *_chip)
{
 struct snd_vx222 *chip = (struct snd_vx222 *)_chip;


 vx_outl(chip, CDSP, chip->regCDSP &~ VX_CDSP_CODEC_RESET_MASK);
 vx_inl(chip, CDSP);
 msleep(10);

 chip->regCDSP |= VX_CDSP_CODEC_RESET_MASK;
 vx_outl(chip, CDSP, chip->regCDSP);
 vx_inl(chip, CDSP);
 if (_chip->type == VX_TYPE_BOARD) {
  msleep(1);
  return;
 }

 msleep(5);

 vx2_write_codec_reg(_chip, AKM_CODEC_POWER_CONTROL_CMD);

 vx2_write_codec_reg(_chip, AKM_CODEC_CLOCK_FORMAT_CMD);
 vx2_write_codec_reg(_chip, AKM_CODEC_MUTE_CMD);
 vx2_write_codec_reg(_chip, AKM_CODEC_RESET_OFF_CMD);

 if (_chip->type == VX_TYPE_MIC) {

  chip->regSELMIC = MICRO_SELECT_INPUT_NORM |
   MICRO_SELECT_PREAMPLI_G_0 |
   MICRO_SELECT_NOISE_T_52DB;


  chip->regSELMIC &= ~MICRO_SELECT_PHANTOM_ALIM;

  vx_outl(_chip, SELMIC, chip->regSELMIC);
 }
}
