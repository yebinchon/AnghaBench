
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ctxt {struct msm_snd_endpoints* snd_epts; int lock; } ;
struct TYPE_2__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct msm_snd_endpoints {int dummy; } ;


 int misc_register (int *) ;
 int mutex_init (int *) ;
 int snd_misc ;
 struct snd_ctxt the_snd ;

__attribute__((used)) static int snd_probe(struct platform_device *pdev)
{
 struct snd_ctxt *snd = &the_snd;
 mutex_init(&snd->lock);
 snd->snd_epts = (struct msm_snd_endpoints *)pdev->dev.platform_data;
 return misc_register(&snd_misc);
}
