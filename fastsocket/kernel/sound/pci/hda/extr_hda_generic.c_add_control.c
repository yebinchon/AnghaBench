
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int index; unsigned long private_value; int subdevice; } ;
struct hda_gen_spec {int dummy; } ;


 int HDA_SUBDEV_AMP_FLAG ;
 int * control_templates ;
 scalar_t__ get_amp_nid_ (unsigned long) ;
 struct snd_kcontrol_new* snd_hda_gen_add_kctl (struct hda_gen_spec*,char const*,int *) ;

__attribute__((used)) static struct snd_kcontrol_new *
add_control(struct hda_gen_spec *spec, int type, const char *name,
         int cidx, unsigned long val)
{
 struct snd_kcontrol_new *knew;

 knew = snd_hda_gen_add_kctl(spec, name, &control_templates[type]);
 if (!knew)
  return ((void*)0);
 knew->index = cidx;
 if (get_amp_nid_(val))
  knew->subdevice = HDA_SUBDEV_AMP_FLAG;
 knew->private_value = val;
 return knew;
}
