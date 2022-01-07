
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 unsigned int AD1986A_MIC_EVENT ;
 int ad1986a_automic (struct hda_codec*) ;

__attribute__((used)) static void ad1986a_automic_unsol_event(struct hda_codec *codec,
         unsigned int res)
{
 if ((res >> 26) != AD1986A_MIC_EVENT)
  return;
 ad1986a_automic(codec);
}
