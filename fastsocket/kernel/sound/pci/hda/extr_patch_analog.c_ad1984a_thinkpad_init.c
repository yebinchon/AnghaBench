
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int ad1984a_thinkpad_automute (struct hda_codec*) ;
 int ad198x_init (struct hda_codec*) ;

__attribute__((used)) static int ad1984a_thinkpad_init(struct hda_codec *codec)
{
 ad198x_init(codec);
 ad1984a_thinkpad_automute(codec);
 return 0;
}
