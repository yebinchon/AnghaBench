
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pernet_operations {int (* init ) (int *) ;} ;
struct list_head {int dummy; } ;


 int init_net ;
 int stub1 (int *) ;

__attribute__((used)) static int register_pernet_operations(struct list_head *list,
          struct pernet_operations *ops)
{
 if (ops->init == ((void*)0))
  return 0;
 return ops->init(&init_net);
}
