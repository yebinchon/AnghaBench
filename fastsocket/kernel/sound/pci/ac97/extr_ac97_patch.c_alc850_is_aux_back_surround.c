
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int is_surround_on (struct snd_ac97*) ;

__attribute__((used)) static inline int alc850_is_aux_back_surround(struct snd_ac97 *ac97)
{
 return is_surround_on(ac97);
}
