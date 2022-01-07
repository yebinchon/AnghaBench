
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_kcontrol {int id; TYPE_3__* vd; int (* put ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;int (* get ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;} ;
struct TYPE_5__ {scalar_t__* value; } ;
struct TYPE_6__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cmipci {int mixer_insensitive; scalar_t__* mixer_res_status; int card; struct snd_kcontrol** mixer_res_ctl; } ;
struct TYPE_8__ {scalar_t__ toggle_on; } ;
struct TYPE_7__ {int access; } ;


 unsigned int CM_SAVED_MIXERS ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 TYPE_4__* cm_saved_mixer ;
 int kfree (struct snd_ctl_elem_value*) ;
 struct snd_ctl_elem_value* kmalloc (int,int ) ;
 int memset (struct snd_ctl_elem_value*,int ,int) ;
 int snd_ctl_notify (int ,int,int *) ;
 int stub1 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 int stub2 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int save_mixer_state(struct cmipci *cm)
{
 if (! cm->mixer_insensitive) {
  struct snd_ctl_elem_value *val;
  unsigned int i;

  val = kmalloc(sizeof(*val), GFP_ATOMIC);
  if (!val)
   return -ENOMEM;
  for (i = 0; i < CM_SAVED_MIXERS; i++) {
   struct snd_kcontrol *ctl = cm->mixer_res_ctl[i];
   if (ctl) {
    int event;
    memset(val, 0, sizeof(*val));
    ctl->get(ctl, val);
    cm->mixer_res_status[i] = val->value.integer.value[0];
    val->value.integer.value[0] = cm_saved_mixer[i].toggle_on;
    event = SNDRV_CTL_EVENT_MASK_INFO;
    if (cm->mixer_res_status[i] != val->value.integer.value[0]) {
     ctl->put(ctl, val);
     event |= SNDRV_CTL_EVENT_MASK_VALUE;
    }
    ctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
    snd_ctl_notify(cm->card, event, &ctl->id);
   }
  }
  kfree(val);
  cm->mixer_insensitive = 1;
 }
 return 0;
}
