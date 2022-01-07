
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {char* name; } ;


 struct net_device* __dev_get_by_index (int *,int) ;
 int dev_base_lock ;
 int init_net ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *bcm_proc_getifname(char *result, int ifindex)
{
 struct net_device *dev;

 if (!ifindex)
  return "any";

 read_lock(&dev_base_lock);
 dev = __dev_get_by_index(&init_net, ifindex);
 if (dev)
  strcpy(result, dev->name);
 else
  strcpy(result, "???");
 read_unlock(&dev_base_lock);

 return result;
}
