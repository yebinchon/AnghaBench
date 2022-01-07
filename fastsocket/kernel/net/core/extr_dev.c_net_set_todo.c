
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int todo_list; } ;


 int list_add_tail (int *,int *) ;
 int net_todo_list ;

__attribute__((used)) static void net_set_todo(struct net_device *dev)
{
 list_add_tail(&dev->todo_list, &net_todo_list);
}
