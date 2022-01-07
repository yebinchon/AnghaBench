
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int alc_auto_setup_eapd (struct hda_codec*,int) ;
 int msleep (int) ;

__attribute__((used)) static void alc_eapd_shutup(struct hda_codec *codec)
{
 alc_auto_setup_eapd(codec, 0);
 msleep(200);
}
