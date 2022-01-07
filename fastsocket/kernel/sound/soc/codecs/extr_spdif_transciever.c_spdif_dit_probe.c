
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int * dev; } ;


 TYPE_1__ dit_stub_dai ;
 int snd_soc_register_dai (TYPE_1__*) ;

__attribute__((used)) static int spdif_dit_probe(struct platform_device *pdev)
{
 dit_stub_dai.dev = &pdev->dev;
 return snd_soc_register_dai(&dit_stub_dai);
}
