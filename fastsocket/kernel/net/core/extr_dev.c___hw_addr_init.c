
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_hw_addr_list {scalar_t__ count; int list; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void __hw_addr_init(struct netdev_hw_addr_list *list)
{
 INIT_LIST_HEAD(&list->list);
 list->count = 0;
}
