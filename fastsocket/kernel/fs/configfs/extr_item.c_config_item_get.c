
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int ci_kref; } ;


 int kref_get (int *) ;

struct config_item * config_item_get(struct config_item * item)
{
 if (item)
  kref_get(&item->ci_kref);
 return item;
}
