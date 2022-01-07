
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PAR_PIN_CAP ;
 unsigned int snd_hda_param_read (struct hda_codec*,int ,int ) ;

__attribute__((used)) static unsigned int read_pin_cap(struct hda_codec *codec, hda_nid_t nid,
     int dir)
{
 return snd_hda_param_read(codec, nid, AC_PAR_PIN_CAP);
}
