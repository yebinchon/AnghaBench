
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_name (int *,char*) ;
 struct device_node* of_get_next_child (struct device_node*,struct device_node*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static struct device_node *find_audio_device(const char *name)
{
 struct device_node *gpiop;
 struct device_node *np;

 gpiop = of_find_node_by_name(((void*)0), "gpio");
 if (! gpiop)
  return ((void*)0);

 for (np = of_get_next_child(gpiop, ((void*)0)); np;
   np = of_get_next_child(gpiop, np)) {
  const char *property = of_get_property(np, "audio-gpio", ((void*)0));
  if (property && strcmp(property, name) == 0)
   break;
 }
 of_node_put(gpiop);
 return np;
}
