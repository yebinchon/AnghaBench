
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int snd_hda_get_int_hint (struct hda_codec*,char const*,int*) ;

__attribute__((used)) static inline bool get_int_hint(struct hda_codec *codec, const char *key,
    int *valp)
{
 return !snd_hda_get_int_hint(codec, key, valp);
}
