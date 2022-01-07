
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_pintbl {int val; scalar_t__ nid; } ;
struct hda_codec {int dummy; } ;


 int snd_hda_set_pin_ctl_cache (struct hda_codec*,scalar_t__,int ) ;

__attribute__((used)) static void set_pin_targets(struct hda_codec *codec,
       const struct hda_pintbl *cfg)
{
 for (; cfg->nid; cfg++)
  snd_hda_set_pin_ctl_cache(codec, cfg->nid, cfg->val);
}
