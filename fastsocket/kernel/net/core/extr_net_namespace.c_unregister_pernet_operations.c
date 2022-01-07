
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pernet_operations {int (* exit ) (int *) ;} ;


 int init_net ;
 int stub1 (int *) ;

__attribute__((used)) static void unregister_pernet_operations(struct pernet_operations *ops)
{
 if (ops->exit)
  ops->exit(&init_net);
}
