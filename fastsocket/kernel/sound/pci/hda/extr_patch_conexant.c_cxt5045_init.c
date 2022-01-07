
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int conexant_init (struct hda_codec*) ;
 int cxt5045_hp_automute (struct hda_codec*) ;

__attribute__((used)) static int cxt5045_init(struct hda_codec *codec)
{
 conexant_init(codec);
 cxt5045_hp_automute(codec);
 return 0;
}
