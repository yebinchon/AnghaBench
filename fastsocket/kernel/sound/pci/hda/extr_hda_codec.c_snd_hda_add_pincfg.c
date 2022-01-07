
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_array {int dummy; } ;
struct hda_pincfg {unsigned int cfg; int nid; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int ENOMEM ;
 struct hda_pincfg* look_up_pincfg (struct hda_codec*,struct snd_array*,int ) ;
 struct hda_pincfg* snd_array_new (struct snd_array*) ;

int snd_hda_add_pincfg(struct hda_codec *codec, struct snd_array *list,
         hda_nid_t nid, unsigned int cfg)
{
 struct hda_pincfg *pin;
 pin = look_up_pincfg(codec, list, nid);
 if (!pin) {
  pin = snd_array_new(list);
  if (!pin)
   return -ENOMEM;
  pin->nid = nid;
 }
 pin->cfg = cfg;
 return 0;
}
