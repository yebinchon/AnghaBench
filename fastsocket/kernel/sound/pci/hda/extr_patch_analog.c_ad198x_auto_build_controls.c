
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int create_beep_ctls (struct hda_codec*) ;
 int snd_hda_gen_build_controls (struct hda_codec*) ;

__attribute__((used)) static int ad198x_auto_build_controls(struct hda_codec *codec)
{
 int err;

 err = snd_hda_gen_build_controls(codec);
 if (err < 0)
  return err;
 err = create_beep_ctls(codec);
 if (err < 0)
  return err;
 return 0;
}
