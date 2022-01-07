
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8192_priv {int bpbc_pressed; } ;
struct net_device {int dummy; } ;


 int BIT0 ;
 int BIT6 ;
 int COMP_IO ;
 int GPI ;
 int GPIOMUX_EN ;
 int GPIOSEL_GPIO ;
 int GPIO_IN ;
 int GPIO_IO_SEL ;
 int HAL_8192S_HW_GPIO_WPS_BIT ;
 int MAC_PINMUX_CFG ;
 int RT_TRACE (int ,char*,...) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;

__attribute__((used)) static void dm_check_pbc_gpio(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u8 tmp1byte;

 write_nic_byte(dev, MAC_PINMUX_CFG, (GPIOMUX_EN | GPIOSEL_GPIO));

 tmp1byte = read_nic_byte(dev, GPIO_IO_SEL);
 tmp1byte &= ~(HAL_8192S_HW_GPIO_WPS_BIT);
 write_nic_byte(dev, GPIO_IO_SEL, tmp1byte);

 tmp1byte = read_nic_byte(dev, GPIO_IN);

 RT_TRACE(COMP_IO, "CheckPbcGPIO - %x\n", tmp1byte);


 if (tmp1byte == 0xff)
  return ;

 if (tmp1byte&HAL_8192S_HW_GPIO_WPS_BIT)
 {


  RT_TRACE(COMP_IO, "CheckPbcGPIO - PBC is pressed\n");
  priv->bpbc_pressed = 1;
 }



}
