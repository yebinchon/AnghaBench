
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tea575x {int * vd; } ;


 int video_unregister_device (int *) ;

void snd_tea575x_exit(struct snd_tea575x *tea)
{
 if (tea->vd) {
  video_unregister_device(tea->vd);
  tea->vd = ((void*)0);
 }
}
