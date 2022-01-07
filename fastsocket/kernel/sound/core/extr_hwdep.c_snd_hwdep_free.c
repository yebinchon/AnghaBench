
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hwdep {int (* private_free ) (struct snd_hwdep*) ;} ;


 int kfree (struct snd_hwdep*) ;
 int stub1 (struct snd_hwdep*) ;

__attribute__((used)) static int snd_hwdep_free(struct snd_hwdep *hwdep)
{
 if (!hwdep)
  return 0;
 if (hwdep->private_free)
  hwdep->private_free(hwdep);
 kfree(hwdep);
 return 0;
}
