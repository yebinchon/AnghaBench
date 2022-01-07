
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int cm9780_controls ;
 int patch_build_controls (struct snd_ac97*,int ,int ) ;

__attribute__((used)) static int patch_cm9780_specific(struct snd_ac97 *ac97)
{
 return patch_build_controls(ac97, cm9780_controls, ARRAY_SIZE(cm9780_controls));
}
