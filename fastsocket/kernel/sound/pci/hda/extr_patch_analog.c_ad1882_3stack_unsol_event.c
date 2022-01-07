
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;



 int ad1882_3stack_automute (struct hda_codec*) ;

__attribute__((used)) static void ad1882_3stack_unsol_event(struct hda_codec *codec, unsigned int res)
{
 switch (res >> 26) {
 case 128:
  ad1882_3stack_automute(codec);
  break;
 }
}
