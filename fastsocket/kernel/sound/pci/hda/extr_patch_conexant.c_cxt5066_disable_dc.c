
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int cxt5066_olpc_automic (struct hda_codec*) ;
 int cxt5066_set_mic_boost (struct hda_codec*) ;

__attribute__((used)) static void cxt5066_disable_dc(struct hda_codec *codec)
{

 cxt5066_set_mic_boost(codec);

 cxt5066_olpc_automic(codec);
}
