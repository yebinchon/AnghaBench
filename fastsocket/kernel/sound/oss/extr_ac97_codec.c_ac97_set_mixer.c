
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec {unsigned int* mixer_state; int (* write_mixer ) (struct ac97_codec*,unsigned int,unsigned int,unsigned int) ;} ;


 int stub1 (struct ac97_codec*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void ac97_set_mixer(struct ac97_codec *codec, unsigned int oss_mixer, unsigned int val )
{
 unsigned int left,right;


 right = ((val >> 8) & 0xff) ;
 left = (val & 0xff) ;

 if (right > 100) right = 100;
 if (left > 100) left = 100;

 codec->mixer_state[oss_mixer] = (right << 8) | left;
 codec->write_mixer(codec, oss_mixer, left, right);
}
