
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {struct s6000_i2s_dev* private_data; } ;
struct s6000_i2s_dev {int dummy; } ;


 int EINVAL ;
 int S6_I2S_FIRST ;
 int S6_I2S_INTERFACE_CFG (int) ;
 int S6_I2S_LEFT_FIRST ;
 int S6_I2S_RIGHT_FIRST ;
 int S6_I2S_SCK_DIR ;
 int S6_I2S_SCK_IN ;
 int S6_I2S_SCK_OUT ;
 int S6_I2S_WS_DIR ;
 int S6_I2S_WS_IN ;
 int S6_I2S_WS_OUT ;




 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 int s6_i2s_mod_reg (struct s6000_i2s_dev*,int ,int,int) ;

__attribute__((used)) static int s6000_i2s_set_dai_fmt(struct snd_soc_dai *cpu_dai,
       unsigned int fmt)
{
 struct s6000_i2s_dev *dev = cpu_dai->private_data;
 u32 w;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 133:
  w = S6_I2S_SCK_IN | S6_I2S_WS_IN;
  break;
 case 131:
  w = S6_I2S_SCK_OUT | S6_I2S_WS_IN;
  break;
 case 132:
  w = S6_I2S_SCK_IN | S6_I2S_WS_OUT;
  break;
 case 130:
  w = S6_I2S_SCK_OUT | S6_I2S_WS_OUT;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  w |= S6_I2S_LEFT_FIRST;
  break;
 case 129:
  w |= S6_I2S_RIGHT_FIRST;
  break;
 default:
  return -EINVAL;
 }

 s6_i2s_mod_reg(dev, S6_I2S_INTERFACE_CFG(0),
         S6_I2S_FIRST | S6_I2S_WS_DIR | S6_I2S_SCK_DIR, w);
 s6_i2s_mod_reg(dev, S6_I2S_INTERFACE_CFG(1),
         S6_I2S_FIRST | S6_I2S_WS_DIR | S6_I2S_SCK_DIR, w);

 return 0;
}
