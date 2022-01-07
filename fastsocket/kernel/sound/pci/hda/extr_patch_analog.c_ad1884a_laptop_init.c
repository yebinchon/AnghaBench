
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int ad1884a_laptop_automic (struct hda_codec*) ;
 int ad1884a_laptop_automute (struct hda_codec*) ;
 int ad198x_init (struct hda_codec*) ;

__attribute__((used)) static int ad1884a_laptop_init(struct hda_codec *codec)
{
 ad198x_init(codec);
 ad1884a_laptop_automute(codec);
 ad1884a_laptop_automic(codec);
 return 0;
}
