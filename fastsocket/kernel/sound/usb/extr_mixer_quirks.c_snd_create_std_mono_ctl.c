
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_mixer_interface {int dummy; } ;
struct usb_mixer_elem_info {unsigned int id; int val_type; int channels; unsigned int control; unsigned int cmask; int max; scalar_t__ dBmax; scalar_t__ dBmin; scalar_t__ res; scalar_t__ min; struct usb_mixer_interface* mixer; } ;
struct TYPE_5__ {int * c; } ;
struct TYPE_4__ {int name; } ;
struct snd_kcontrol {TYPE_3__* vd; TYPE_2__ tlv; int private_free; TYPE_1__ id; } ;
typedef int snd_kcontrol_tlv_rw_t ;
struct TYPE_6__ {int access; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK ;
 int SNDRV_CTL_ELEM_ACCESS_TLV_READ ;
 int kfree (struct usb_mixer_elem_info*) ;
 struct usb_mixer_elem_info* kzalloc (int,int ) ;
 struct snd_kcontrol* snd_ctl_new1 (int ,struct usb_mixer_elem_info*) ;
 int snd_usb_feature_unit_ctl ;
 int snd_usb_mixer_add_control (struct usb_mixer_interface*,struct snd_kcontrol*) ;
 int snprintf (int ,int,char const*) ;
 int usb_mixer_elem_free ;

__attribute__((used)) static int snd_create_std_mono_ctl(struct usb_mixer_interface *mixer,
    unsigned int unitid,
    unsigned int control,
    unsigned int cmask,
    int val_type,
    const char *name,
    snd_kcontrol_tlv_rw_t *tlv_callback)
{
 int err;
 struct usb_mixer_elem_info *cval;
 struct snd_kcontrol *kctl;

 cval = kzalloc(sizeof(*cval), GFP_KERNEL);
 if (!cval)
  return -ENOMEM;

 cval->id = unitid;
 cval->mixer = mixer;
 cval->val_type = val_type;
 cval->channels = 1;
 cval->control = control;
 cval->cmask = cmask;



 cval->min = 0;
 cval->max = 1;
 cval->res = 0;
 cval->dBmin = 0;
 cval->dBmax = 0;


 kctl = snd_ctl_new1(snd_usb_feature_unit_ctl, cval);
 if (!kctl) {
  kfree(cval);
  return -ENOMEM;
 }


 snprintf(kctl->id.name, sizeof(kctl->id.name), name);
 kctl->private_free = usb_mixer_elem_free;


 if (tlv_callback) {
  kctl->tlv.c = tlv_callback;
  kctl->vd[0].access |=
   SNDRV_CTL_ELEM_ACCESS_TLV_READ |
   SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK;
 }

 err = snd_usb_mixer_add_control(mixer, kctl);
 if (err < 0)
  return err;

 return 0;
}
