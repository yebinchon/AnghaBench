
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int snd_hda_power_save (struct hda_codec*,int ,int) ;

__attribute__((used)) static inline void snd_hda_power_sync(struct hda_codec *codec)
{
 snd_hda_power_save(codec, 0, 0);
}
