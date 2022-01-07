
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int * dev; scalar_t__ pop_time; int * hw_write; int * control_data; } ;
struct platform_device {int dev; } ;
struct cx20442_priv {struct snd_soc_codec codec; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cx20442_register (struct cx20442_priv*) ;
 struct cx20442_priv* kzalloc (int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct cx20442_priv*) ;

__attribute__((used)) static int cx20442_platform_probe(struct platform_device *pdev)
{
 struct cx20442_priv *cx20442;
 struct snd_soc_codec *codec;

 cx20442 = kzalloc(sizeof(struct cx20442_priv), GFP_KERNEL);
 if (cx20442 == ((void*)0))
  return -ENOMEM;

 codec = &cx20442->codec;

 codec->control_data = ((void*)0);
 codec->hw_write = ((void*)0);
 codec->pop_time = 0;

 codec->dev = &pdev->dev;
 platform_set_drvdata(pdev, cx20442);

 return cx20442_register(cx20442);
}
