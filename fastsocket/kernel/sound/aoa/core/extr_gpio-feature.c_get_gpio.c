
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_name (int *,char*) ;
 struct device_node* of_get_next_child (struct device_node*,struct device_node*) ;
 void* of_get_property (struct device_node*,char*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static struct device_node *get_gpio(char *name,
        char *altname,
        int *gpioptr,
        int *gpioactiveptr)
{
 struct device_node *np, *gpio;
 const u32 *reg;
 const char *audio_gpio;

 *gpioptr = -1;


 np = of_find_node_by_name(((void*)0), name);
 if (!np) {




  gpio = of_find_node_by_name(((void*)0), "gpio");
  if (!gpio)
   return ((void*)0);
  while ((np = of_get_next_child(gpio, np))) {
   audio_gpio = of_get_property(np, "audio-gpio", ((void*)0));
   if (!audio_gpio)
    continue;
   if (strcmp(audio_gpio, name) == 0)
    break;
   if (altname && (strcmp(audio_gpio, altname) == 0))
    break;
  }

  if (!np)
   return ((void*)0);
 }

 reg = of_get_property(np, "reg", ((void*)0));
 if (!reg)
  return ((void*)0);

 *gpioptr = *reg;




 if (*gpioptr < 0x50)
  *gpioptr += 0x50;

 reg = of_get_property(np, "audio-gpio-active-state", ((void*)0));
 if (!reg)





  *gpioactiveptr = 0;
 else
  *gpioactiveptr = *reg;

 return np;
}
