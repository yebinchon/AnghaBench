
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct au1xpsc_audio_dmadata {int dummy; } ;
struct TYPE_4__ {int ddma_id; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_DMA ;
 size_t PCM_RX ;
 size_t PCM_TX ;
 TYPE_1__** au1xpsc_audio_pcmdma ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;

__attribute__((used)) static int au1xpsc_pcm_probe(struct platform_device *pdev)
{
 struct resource *r;
 int ret;

 if (au1xpsc_audio_pcmdma[PCM_TX] || au1xpsc_audio_pcmdma[PCM_RX])
  return -EBUSY;


 au1xpsc_audio_pcmdma[PCM_TX]
  = kzalloc(sizeof(struct au1xpsc_audio_dmadata), GFP_KERNEL);
 if (!au1xpsc_audio_pcmdma[PCM_TX])
  return -ENOMEM;

 r = platform_get_resource(pdev, IORESOURCE_DMA, 0);
 if (!r) {
  ret = -ENODEV;
  goto out1;
 }
 (au1xpsc_audio_pcmdma[PCM_TX])->ddma_id = r->start;


 au1xpsc_audio_pcmdma[PCM_RX]
  = kzalloc(sizeof(struct au1xpsc_audio_dmadata), GFP_KERNEL);
 if (!au1xpsc_audio_pcmdma[PCM_RX])
  return -ENOMEM;

 r = platform_get_resource(pdev, IORESOURCE_DMA, 1);
 if (!r) {
  ret = -ENODEV;
  goto out2;
 }
 (au1xpsc_audio_pcmdma[PCM_RX])->ddma_id = r->start;

 return 0;

out2:
 kfree(au1xpsc_audio_pcmdma[PCM_RX]);
 au1xpsc_audio_pcmdma[PCM_RX] = ((void*)0);
out1:
 kfree(au1xpsc_audio_pcmdma[PCM_TX]);
 au1xpsc_audio_pcmdma[PCM_TX] = ((void*)0);
 return ret;
}
