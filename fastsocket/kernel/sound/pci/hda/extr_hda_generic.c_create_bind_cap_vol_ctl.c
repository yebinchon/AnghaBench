
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int index; unsigned int private_value; void* subdevice; } ;
struct hda_gen_spec {int dummy; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int ENOMEM ;
 void* HDA_SUBDEV_AMP_FLAG ;
 int cap_sw_temp ;
 int cap_vol_temp ;
 struct snd_kcontrol_new* snd_hda_gen_add_kctl (struct hda_gen_spec*,int *,int *) ;

__attribute__((used)) static int create_bind_cap_vol_ctl(struct hda_codec *codec, int idx,
       unsigned int vol_ctl, unsigned int sw_ctl)
{
 struct hda_gen_spec *spec = codec->spec;
 struct snd_kcontrol_new *knew;

 if (vol_ctl) {
  knew = snd_hda_gen_add_kctl(spec, ((void*)0), &cap_vol_temp);
  if (!knew)
   return -ENOMEM;
  knew->index = idx;
  knew->private_value = vol_ctl;
  knew->subdevice = HDA_SUBDEV_AMP_FLAG;
 }
 if (sw_ctl) {
  knew = snd_hda_gen_add_kctl(spec, ((void*)0), &cap_sw_temp);
  if (!knew)
   return -ENOMEM;
  knew->index = idx;
  knew->private_value = sw_ctl;
  knew->subdevice = HDA_SUBDEV_AMP_FLAG;
 }
 return 0;
}
