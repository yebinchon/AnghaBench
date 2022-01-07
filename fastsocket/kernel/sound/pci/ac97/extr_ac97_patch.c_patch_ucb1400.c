
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int * build_ops; } ;


 int patch_ucb1400_ops ;
 int snd_ac97_write_cache (struct snd_ac97*,int,int) ;

__attribute__((used)) static int patch_ucb1400(struct snd_ac97 * ac97)
{
 ac97->build_ops = &patch_ucb1400_ops;

 snd_ac97_write_cache(ac97, 0x6a, 0x0050);
 snd_ac97_write_cache(ac97, 0x6c, 0x0030);
 return 0;
}
