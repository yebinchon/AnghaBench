
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wan_device {struct wan_device* next; int name; } ;


 scalar_t__ strcmp (int ,char*) ;
 struct wan_device* wanrouter_router_devlist ;

__attribute__((used)) static struct wan_device *wanrouter_find_device(char *name)
{
 struct wan_device *wandev;

 for (wandev = wanrouter_router_devlist;
      wandev && strcmp(wandev->name, name);
  wandev = wandev->next);
 return wandev;
}
