
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int TLV320AIC23_ANLG ;
 struct snd_soc_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int tlv320aic23_read_reg_cache (struct snd_soc_codec*,int ) ;
 int tlv320aic23_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int snd_soc_tlv320aic23_put_volsw(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
 u16 val, reg;

 val = (ucontrol->value.integer.value[0] & 0x07);
 val = (val >= 4) ? 4 : (3 - val);

 reg = tlv320aic23_read_reg_cache(codec, TLV320AIC23_ANLG) & (~0x1C0);
 tlv320aic23_write(codec, TLV320AIC23_ANLG, reg | (val << 6));

 return 0;
}
