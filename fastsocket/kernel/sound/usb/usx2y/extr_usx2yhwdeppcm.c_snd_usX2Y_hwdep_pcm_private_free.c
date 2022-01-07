
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usX2Ydev {int * hwdep_pcm_shm; } ;
struct snd_usX2Y_hwdep_pcm_shm {int dummy; } ;
struct snd_hwdep {struct usX2Ydev* private_data; } ;


 int snd_free_pages (int *,int) ;

__attribute__((used)) static void snd_usX2Y_hwdep_pcm_private_free(struct snd_hwdep *hwdep)
{
 struct usX2Ydev *usX2Y = hwdep->private_data;
 if (((void*)0) != usX2Y->hwdep_pcm_shm)
  snd_free_pages(usX2Y->hwdep_pcm_shm, sizeof(struct snd_usX2Y_hwdep_pcm_shm));
}
