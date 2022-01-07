
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ssp; } ;
struct ssp_priv {TYPE_1__ dev; } ;
struct snd_soc_dai {struct ssp_priv* private_data; } ;
struct platform_device {int dummy; } ;


 int ssp_free (int ) ;

__attribute__((used)) static void pxa_ssp_remove(struct platform_device *pdev,
         struct snd_soc_dai *dai)
{
 struct ssp_priv *priv = dai->private_data;
 ssp_free(priv->dev.ssp);
}
