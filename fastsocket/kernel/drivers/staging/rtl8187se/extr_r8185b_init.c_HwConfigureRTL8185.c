
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int ANTSEL ;
 int ARFR ;
 int BRSR ;
 int CCK_TXAGC ;
 int CW_CONF ;
 int OFDM_TXAGC ;
 int PlatformIOWrite2Byte (struct net_device*,int ,int) ;
 int RATE_FALLBACK ;
 int RATE_FALLBACK_CTL_AUTO_STEP1 ;
 int RATE_FALLBACK_CTL_ENABLE ;
 int TXAGC_CTL ;
 int read_nic_byte (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_word (struct net_device*,int ,int) ;

void
HwConfigureRTL8185(
  struct net_device *dev
  )
{


        u8 bUNIVERSAL_CONTROL_RL = 0;

 u8 bUNIVERSAL_CONTROL_AGC = 1;
 u8 bUNIVERSAL_CONTROL_ANT = 1;
 u8 bAUTO_RATE_FALLBACK_CTL = 1;
 u8 val8;
        write_nic_word(dev, BRSR, 0x0fff);

 val8 = read_nic_byte(dev, CW_CONF);

 if(bUNIVERSAL_CONTROL_RL)
  val8 = val8 & 0xfd;
 else
  val8 = val8 | 0x02;

 write_nic_byte(dev, CW_CONF, val8);


 val8 = read_nic_byte(dev, TXAGC_CTL);
 if(bUNIVERSAL_CONTROL_AGC)
 {
  write_nic_byte(dev, CCK_TXAGC, 128);
  write_nic_byte(dev, OFDM_TXAGC, 128);
  val8 = val8 & 0xfe;
 }
 else
 {
  val8 = val8 | 0x01 ;
 }


 write_nic_byte(dev, TXAGC_CTL, val8);


 val8 = read_nic_byte(dev, TXAGC_CTL );

 if(bUNIVERSAL_CONTROL_ANT)
 {
  write_nic_byte(dev, ANTSEL, 0x00);
  val8 = val8 & 0xfd;
 }
 else
 {
  val8 = val8 & (val8|0x02);
 }

 write_nic_byte(dev, TXAGC_CTL, val8);


 val8 = read_nic_byte(dev, RATE_FALLBACK);
 val8 &= 0x7c;
 if( bAUTO_RATE_FALLBACK_CTL )
 {
  val8 |= RATE_FALLBACK_CTL_ENABLE | RATE_FALLBACK_CTL_AUTO_STEP1;





         PlatformIOWrite2Byte(dev, ARFR, 0x0fff);

 }
 else
 {
 }
 write_nic_byte(dev, RATE_FALLBACK, val8);
}
