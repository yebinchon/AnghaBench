
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec_preset_list {int list; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int preset_mutex ;

int snd_hda_delete_codec_preset(struct hda_codec_preset_list *preset)
{
 mutex_lock(&preset_mutex);
 list_del(&preset->list);
 mutex_unlock(&preset_mutex);
 return 0;
}
