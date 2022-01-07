
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {char* name; } ;



__attribute__((used)) static inline int ebt_dev_check(char *entry, const struct net_device *device)
{
 int i = 0;
 const char *devname;

 if (*entry == '\0')
  return 0;
 if (!device)
  return 1;
 devname = device->name;

 while (entry[i] != '\0' && entry[i] != 1 && entry[i] == devname[i])
  i++;
 return (devname[i] != entry[i] && entry[i] != 1);
}
