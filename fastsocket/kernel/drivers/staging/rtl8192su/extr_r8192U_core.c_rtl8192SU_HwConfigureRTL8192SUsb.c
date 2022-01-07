
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct r8192_priv {int rf_type; int MinSpaceCfg; int bInHctTest; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int mode; } ;


 scalar_t__ ACK_TIMEOUT ;
 scalar_t__ AGGLEN_LMT_H ;
 scalar_t__ AGGLEN_LMT_L ;
 scalar_t__ AMPDU_MIN_SPACE ;
 scalar_t__ ARFR0 ;
 scalar_t__ BW_OPMODE ;
 int BW_OPMODE_20MHZ ;
 int BW_OPMODE_5G ;
 scalar_t__ CFEND_TH ;
 int COMP_INIT ;
 scalar_t__ DARFRC ;
 scalar_t__ INIRTSMCS_SEL ;
 int MAX_MSS_DENSITY_1T ;
 int MAX_MSS_DENSITY_2T ;
 scalar_t__ MLT ;
 scalar_t__ NAV_PROT_LEN ;
 scalar_t__ RARFRC ;
 int RATE_ALL_CCK ;
 int RATE_ALL_OFDM_1SS ;
 int RATE_ALL_OFDM_2SS ;
 int RATE_ALL_OFDM_AG ;




 int RT_TRACE (int ,char*,...) ;
 scalar_t__ SIFS_CCK ;
 scalar_t__ SIFS_OFDM ;
 scalar_t__ TXOP_STALL_CTRL ;






 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,scalar_t__) ;
 int write_nic_byte (struct net_device*,scalar_t__,int) ;
 int write_nic_dword (struct net_device*,scalar_t__,int) ;
 int write_nic_word (struct net_device*,scalar_t__,int) ;

void rtl8192SU_HwConfigureRTL8192SUsb(struct net_device *dev)
{

 struct r8192_priv *priv = ieee80211_priv(dev);
 u8 regBwOpMode = 0;
 u32 regRATR = 0, regRRSR = 0;
 u8 regTmp = 0;
 u32 i = 0;





 switch(priv->ieee80211->mode)
 {
 case 131:
  regBwOpMode = BW_OPMODE_20MHZ;
  regRATR = RATE_ALL_CCK;
  regRRSR = RATE_ALL_CCK;
  break;
 case 133:
  regBwOpMode = BW_OPMODE_5G |BW_OPMODE_20MHZ;
  regRATR = RATE_ALL_OFDM_AG;
  regRRSR = RATE_ALL_OFDM_AG;
  break;
 case 130:
  regBwOpMode = BW_OPMODE_20MHZ;
  regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
  regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
  break;
 case 132:
  if (priv->bInHctTest)
  {
      regBwOpMode = BW_OPMODE_20MHZ;
      regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
      regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
  }
  else
  {
      regBwOpMode = BW_OPMODE_20MHZ;
      regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG | RATE_ALL_OFDM_1SS | RATE_ALL_OFDM_2SS;
      regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
  }
  break;
 case 129:


  regBwOpMode = BW_OPMODE_20MHZ;
   regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG | RATE_ALL_OFDM_1SS | RATE_ALL_OFDM_2SS;
   regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
  break;
 case 128:
  regBwOpMode = BW_OPMODE_5G;
  regRATR = RATE_ALL_OFDM_AG | RATE_ALL_OFDM_1SS | RATE_ALL_OFDM_2SS;
  regRRSR = RATE_ALL_OFDM_AG;
  break;
 }





 regTmp = read_nic_byte(dev, INIRTSMCS_SEL);
 regRRSR = ((regRRSR & 0x000fffff)<<8) | regTmp;






 { u8 val[4] = {0x0e, 0x0e, 0x0a, 0x0a};

  write_nic_byte(dev, SIFS_CCK, val[0]);

  write_nic_byte(dev, SIFS_CCK+1, val[1]);


  write_nic_byte(dev, SIFS_OFDM, val[2]);

  write_nic_byte(dev, SIFS_OFDM+1, val[3]);
 }

 write_nic_dword(dev, INIRTSMCS_SEL, regRRSR);
 write_nic_byte(dev, BW_OPMODE, regBwOpMode);
 write_nic_dword(dev, DARFRC, 0x02010000);
 write_nic_dword(dev, DARFRC+4, 0x06050403);
 write_nic_dword(dev, RARFRC, 0x02010000);
 write_nic_dword(dev, RARFRC+4, 0x06050403);


 for (i = 0; i < 8; i++)
  write_nic_dword(dev, ARFR0+i*4, 0x1f0ffff0);




 write_nic_byte(dev, AGGLEN_LMT_H, 0x0f);
 write_nic_dword(dev, AGGLEN_LMT_L, 0xddd77442);
 write_nic_dword(dev, AGGLEN_LMT_L+4, 0xfffdd772);


 write_nic_word(dev, NAV_PROT_LEN, 0x0080);


 write_nic_byte(dev, TXOP_STALL_CTRL, 0x00);


 write_nic_byte(dev, MLT, 0x8f);


 write_nic_word(dev, SIFS_CCK, 0x0a0a);
 write_nic_word(dev, SIFS_OFDM, 0x0e0e);

 write_nic_byte(dev, ACK_TIMEOUT, 0x40);


 write_nic_byte(dev, CFEND_TH, 0xFF);




 switch(priv->rf_type)
 {
  case 136:
  case 137:
   RT_TRACE(COMP_INIT, "Initializeadapter: RF_Type%s\n", (priv->rf_type==137? "(1T1R)":"(1T2R)"));
   priv->MinSpaceCfg = (MAX_MSS_DENSITY_1T<<3);
   break;
  case 135:
  case 134:
   RT_TRACE(COMP_INIT, "Initializeadapter:RF_Type(2T2R)\n");
   priv->MinSpaceCfg = (MAX_MSS_DENSITY_2T<<3);
   break;
 }
 write_nic_byte(dev, AMPDU_MIN_SPACE, priv->MinSpaceCfg);







}
