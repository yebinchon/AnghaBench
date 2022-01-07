
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_plugin {int dummy; } ;
typedef enum snd_pcm_plugin_action { ____Placeholder_snd_pcm_plugin_action } snd_pcm_plugin_action ;


 int ENXIO ;


 int rate_init (struct snd_pcm_plugin*) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int rate_action(struct snd_pcm_plugin *plugin,
         enum snd_pcm_plugin_action action,
         unsigned long udata)
{
 if (snd_BUG_ON(!plugin))
  return -ENXIO;
 switch (action) {
 case 129:
 case 128:
  rate_init(plugin);
  break;
 default:
  break;
 }
 return 0;
}
