
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* left_levels; int* right_levels; scalar_t__ SMA; } ;


 int EINVAL ;
 int HDEXAR_AUX_SET_POTS ;
 int HDEXAR_IN_SET_POTS ;
 int HDEXAR_MIC_SET_POTS ;
 int HDEX_AUX_REQ ;
 scalar_t__ SMA_bInPotPosLeft ;
 scalar_t__ SMA_bInPotPosRight ;
 scalar_t__ SMA_bMicPotPosLeft ;
 scalar_t__ SMA_bMicPotPosRight ;
 scalar_t__ SMA_wCurrMastVolLeft ;
 scalar_t__ SMA_wCurrMastVolRight ;







 int bAuxPotPos ;
 int chk_send_dsp_cmd (TYPE_1__*,int ) ;
 TYPE_1__ dev ;
 int mixer_get (int) ;
 int msnd_send_word (TYPE_1__*,int ,int ,int ) ;
 int update_potm (int const,int ,int ) ;
 int update_volm (int const,int ) ;
 int wCurrInVol ;
 int wCurrMHdrVol ;
 int wCurrPlayVol ;
 int writeb (int,scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int mixer_set(int d, int value)
{
 int left = value & 0x000000ff;
 int right = (value & 0x0000ff00) >> 8;
 int bLeft, bRight;
 int wLeft, wRight;
 int updatemaster = 0;

 if (d > 31)
  return -EINVAL;

 bLeft = left * 0xff / 100;
 wLeft = left * 0xffff / 100;

 bRight = right * 0xff / 100;
 wRight = right * 0xffff / 100;

 dev.left_levels[d] = wLeft;
 dev.right_levels[d] = wRight;

 switch (d) {

 case 133:

  writeb(bLeft, dev.SMA + SMA_bInPotPosLeft);
  writeb(bRight, dev.SMA + SMA_bInPotPosRight);
  if (msnd_send_word(&dev, 0, 0, HDEXAR_IN_SET_POTS) == 0)
   chk_send_dsp_cmd(&dev, HDEX_AUX_REQ);
  break;

 case 131:

  writeb(bLeft, dev.SMA + SMA_bMicPotPosLeft);
  writeb(bRight, dev.SMA + SMA_bMicPotPosRight);
  if (msnd_send_word(&dev, 0, 0, HDEXAR_MIC_SET_POTS) == 0)
   chk_send_dsp_cmd(&dev, HDEX_AUX_REQ);
  break;

 case 128:
  writew(wLeft, dev.SMA + SMA_wCurrMastVolLeft);
  writew(wRight, dev.SMA + SMA_wCurrMastVolRight);


 case 132:




 case 129:
 case 130:
 case 134:

  updatemaster = 1;
  break;

 default:
  return 0;
 }

 if (updatemaster) {

  update_volm(130, wCurrPlayVol);
  update_volm(134, wCurrInVol);

  update_volm(129, wCurrMHdrVol);

  update_potm(132, bAuxPotPos, HDEXAR_AUX_SET_POTS);
 }

 return mixer_get(d);
}
