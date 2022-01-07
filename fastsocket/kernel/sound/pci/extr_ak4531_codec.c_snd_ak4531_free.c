
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ak4531 {int (* private_free ) (struct snd_ak4531*) ;} ;


 int kfree (struct snd_ak4531*) ;
 int stub1 (struct snd_ak4531*) ;

__attribute__((used)) static int snd_ak4531_free(struct snd_ak4531 *ak4531)
{
 if (ak4531) {
  if (ak4531->private_free)
   ak4531->private_free(ak4531);
  kfree(ak4531);
 }
 return 0;
}
