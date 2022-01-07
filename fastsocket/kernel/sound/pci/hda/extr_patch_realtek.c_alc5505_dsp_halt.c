
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 unsigned int alc5505_coef_get (struct hda_codec*,int) ;
 int alc5505_coef_set (struct hda_codec*,int,unsigned int) ;

__attribute__((used)) static void alc5505_dsp_halt(struct hda_codec *codec)
{
 unsigned int val;

 alc5505_coef_set(codec, 0x3000, 0x000c);
 alc5505_coef_set(codec, 0x880c, 0x0008);
 alc5505_coef_set(codec, 0x61c0, 0x11110080);
 alc5505_coef_set(codec, 0x6230, 0xfc0d4011);
 alc5505_coef_set(codec, 0x61b4, 0x040a2b03);
 alc5505_coef_set(codec, 0x61b0, 0x00005b17);
 alc5505_coef_set(codec, 0x61b8, 0x04133303);
 val = alc5505_coef_get(codec, 0x6220);
 alc5505_coef_set(codec, 0x6220, (val | 0x3000));
}
