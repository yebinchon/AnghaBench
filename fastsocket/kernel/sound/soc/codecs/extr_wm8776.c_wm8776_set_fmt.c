
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int id; struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 int WM8776_ADCIFCTRL ;
 int WM8776_DACIFCTRL ;


 int WM8776_MSTRCTRL ;
 int snd_soc_update_bits (struct snd_soc_codec*,int,int,int) ;

__attribute__((used)) static int wm8776_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_codec *codec = dai->codec;
 int reg, iface, master;

 switch (dai->id) {
 case 128:
  reg = WM8776_DACIFCTRL;
  master = 0x80;
  break;
 case 129:
  reg = WM8776_ADCIFCTRL;
  master = 0x100;
  break;
 default:
  return -EINVAL;
 }

 iface = 0;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 140:
  break;
 case 139:
  master = 0;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 136:
  iface |= 0x0002;
  break;
 case 130:
  break;
 case 133:
  iface |= 0x0001;
  break;

 case 138:
  iface |= 0x0003;
  break;
 case 137:
  iface |= 0x0007;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 131:
  break;
 case 135:
  iface |= 0x00c;
  break;
 case 134:
  iface |= 0x008;
  break;
 case 132:
  iface |= 0x004;
  break;
 default:
  return -EINVAL;
 }


 snd_soc_update_bits(codec, reg, 0xf, iface);
 snd_soc_update_bits(codec, WM8776_MSTRCTRL, 0x180, master);

 return 0;
}
