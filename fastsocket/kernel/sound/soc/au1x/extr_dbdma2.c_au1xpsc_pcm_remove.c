
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int au1x_pcm_dbdma_free (int *) ;
 int ** au1xpsc_audio_pcmdma ;
 int kfree (int *) ;

__attribute__((used)) static int au1xpsc_pcm_remove(struct platform_device *pdev)
{
 int i;

 for (i = 0; i < 2; i++) {
  if (au1xpsc_audio_pcmdma[i]) {
   au1x_pcm_dbdma_free(au1xpsc_audio_pcmdma[i]);
   kfree(au1xpsc_audio_pcmdma[i]);
   au1xpsc_audio_pcmdma[i] = ((void*)0);
  }
 }

 return 0;
}
