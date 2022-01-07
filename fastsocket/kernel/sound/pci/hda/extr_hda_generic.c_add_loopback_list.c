
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int list; } ;
struct TYPE_3__ {int amplist; } ;
struct hda_gen_spec {TYPE_2__ loopback_list; TYPE_1__ loopback; } ;
struct hda_amp_list {int idx; int dir; int nid; } ;
typedef int hda_nid_t ;


 int ENOMEM ;
 int HDA_INPUT ;
 struct hda_amp_list* snd_array_new (TYPE_2__*) ;

__attribute__((used)) static int add_loopback_list(struct hda_gen_spec *spec, hda_nid_t mix, int idx)
{
 struct hda_amp_list *list;

 list = snd_array_new(&spec->loopback_list);
 if (!list)
  return -ENOMEM;
 list->nid = mix;
 list->dir = HDA_INPUT;
 list->idx = idx;
 spec->loopback.amplist = spec->loopback_list.list;
 return 0;
}
