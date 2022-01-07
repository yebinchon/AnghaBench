
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int res_table; } ;


 int lm4550_restbl ;

__attribute__((used)) static int patch_lm4550(struct snd_ac97 *ac97)
{
 ac97->res_table = lm4550_restbl;
 return 0;
}
