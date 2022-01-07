
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int ci_entry; int ci_kref; } ;


 int INIT_LIST_HEAD (int *) ;
 int kref_init (int *) ;

void config_item_init(struct config_item * item)
{
 kref_init(&item->ci_kref);
 INIT_LIST_HEAD(&item->ci_entry);
}
