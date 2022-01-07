
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer_oss_file {struct snd_mixer_oss* mixer; } ;
struct snd_mixer_oss {scalar_t__ put_recsrc; scalar_t__ get_recsrc; } ;


 int EIO ;
 int SOUND_CAP_EXCL_INPUT ;

__attribute__((used)) static int snd_mixer_oss_caps(struct snd_mixer_oss_file *fmixer)
{
 struct snd_mixer_oss *mixer = fmixer->mixer;
 int result = 0;

 if (mixer == ((void*)0))
  return -EIO;
 if (mixer->get_recsrc && mixer->put_recsrc)
  result |= SOUND_CAP_EXCL_INPUT;
 return result;
}
