
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int dit_stub_dai ;
 int snd_soc_unregister_dai (int *) ;

__attribute__((used)) static int spdif_dit_remove(struct platform_device *pdev)
{
 snd_soc_unregister_dai(&dit_stub_dai);
 return 0;
}
