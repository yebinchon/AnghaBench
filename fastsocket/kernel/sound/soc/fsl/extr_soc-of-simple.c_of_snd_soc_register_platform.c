
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_platform {int dummy; } ;
struct snd_soc_dai {int name; } ;
struct TYPE_4__ {struct snd_soc_dai* cpu_dai; } ;
struct TYPE_3__ {int name; struct snd_soc_platform* platform; } ;
struct of_snd_soc_device {TYPE_2__ dai_link; TYPE_1__ card; struct device_node* platform_node; } ;
struct device_node {int full_name; } ;
typedef int phandle ;
typedef int handle ;


 int ENODEV ;
 int ENOMEM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct device_node* of_find_node_by_phandle (int const) ;
 int * of_get_property (struct device_node*,char*,int*) ;
 struct of_snd_soc_device* of_snd_soc_get_device (struct device_node*) ;
 int of_snd_soc_mutex ;
 int of_snd_soc_register_device (struct of_snd_soc_device*) ;
 int pr_info (char*,int ) ;

int of_snd_soc_register_platform(struct snd_soc_platform *platform,
     struct device_node *node,
     struct snd_soc_dai *cpu_dai)
{
 struct of_snd_soc_device *of_soc;
 struct device_node *codec_node;
 const phandle *handle;
 int len, rc = 0;

 pr_info("registering ASoC platform driver: %s\n", node->full_name);

 handle = of_get_property(node, "codec-handle", &len);
 if (!handle || len < sizeof(handle))
  return -ENODEV;
 codec_node = of_find_node_by_phandle(*handle);
 if (!codec_node)
  return -ENODEV;
 pr_info("looking for codec: %s\n", codec_node->full_name);

 mutex_lock(&of_snd_soc_mutex);
 of_soc = of_snd_soc_get_device(codec_node);
 if (!of_soc) {
  rc = -ENOMEM;
  goto out;
 }

 of_soc->platform_node = node;
 of_soc->dai_link.cpu_dai = cpu_dai;
 of_soc->card.platform = platform;
 of_soc->card.name = of_soc->dai_link.cpu_dai->name;


 of_snd_soc_register_device(of_soc);

 out:
 mutex_unlock(&of_snd_soc_mutex);
 return rc;
}
