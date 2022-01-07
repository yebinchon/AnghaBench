
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 unsigned int AD1884A_HP_EVENT ;
 int ad1984a_thinkpad_automute (struct hda_codec*) ;

__attribute__((used)) static void ad1984a_thinkpad_unsol_event(struct hda_codec *codec,
      unsigned int res)
{
 if ((res >> 26) != AD1884A_HP_EVENT)
  return;
 ad1984a_thinkpad_automute(codec);
}
