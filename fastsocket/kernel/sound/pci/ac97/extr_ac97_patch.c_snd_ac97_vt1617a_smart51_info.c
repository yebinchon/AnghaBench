
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int ac97_enum_text_info (struct snd_kcontrol*,struct snd_ctl_elem_info*,char const**,int) ;

__attribute__((used)) static int snd_ac97_vt1617a_smart51_info(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_info *uinfo)
{





 static const char* texts[] = { "LineIn Mic1", "LineIn Mic1 Mic3",
           "Surr LFE/C Mic3", "LineIn LFE/C Mic3",
           "LineIn Mic2", "LineIn Mic2 Mic1",
           "Surr LFE Mic1", "Surr LFE Mic1 Mic2"};
 return ac97_enum_text_info(kcontrol, uinfo, texts, 8);
}
