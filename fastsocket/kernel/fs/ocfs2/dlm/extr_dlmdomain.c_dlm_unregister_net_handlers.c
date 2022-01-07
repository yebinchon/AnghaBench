
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlm_join_handlers ;
 int o2net_unregister_handler_list (int *) ;

__attribute__((used)) static void dlm_unregister_net_handlers(void)
{
 o2net_unregister_handler_list(&dlm_join_handlers);
}
