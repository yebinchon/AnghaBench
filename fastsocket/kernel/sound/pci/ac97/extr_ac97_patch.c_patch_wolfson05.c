
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int flags; int * build_ops; } ;


 int AC97_HAS_NO_AUX ;
 int AC97_HAS_NO_VIDEO ;
 int patch_wolfson_wm9705_ops ;

__attribute__((used)) static int patch_wolfson05(struct snd_ac97 * ac97)
{

 ac97->build_ops = &patch_wolfson_wm9705_ops;




 return 0;
}
