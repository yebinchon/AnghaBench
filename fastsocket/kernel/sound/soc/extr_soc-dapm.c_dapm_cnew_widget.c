
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;


 int GFP_KERNEL ;
 struct snd_soc_dapm_widget* kmemdup (struct snd_soc_dapm_widget const*,int,int ) ;

__attribute__((used)) static inline struct snd_soc_dapm_widget *dapm_cnew_widget(
 const struct snd_soc_dapm_widget *_widget)
{
 return kmemdup(_widget, sizeof(*_widget), GFP_KERNEL);
}
