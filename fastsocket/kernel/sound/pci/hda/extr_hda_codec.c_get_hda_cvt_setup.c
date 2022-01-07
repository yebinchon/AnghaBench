
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hda_cvt_setup {scalar_t__ nid; } ;
struct TYPE_3__ {int used; } ;
struct hda_codec {TYPE_1__ cvt_setups; } ;
typedef scalar_t__ hda_nid_t ;


 struct hda_cvt_setup* snd_array_elem (TYPE_1__*,int) ;
 struct hda_cvt_setup* snd_array_new (TYPE_1__*) ;

__attribute__((used)) static struct hda_cvt_setup *
get_hda_cvt_setup(struct hda_codec *codec, hda_nid_t nid)
{
 struct hda_cvt_setup *p;
 int i;

 for (i = 0; i < codec->cvt_setups.used; i++) {
  p = snd_array_elem(&codec->cvt_setups, i);
  if (p->nid == nid)
   return p;
 }
 p = snd_array_new(&codec->cvt_setups);
 if (p)
  p->nid = nid;
 return p;
}
