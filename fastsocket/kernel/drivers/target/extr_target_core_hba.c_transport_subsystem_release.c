
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_subsystem_api {int sub_api_list; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int subsystem_mutex ;

void transport_subsystem_release(struct se_subsystem_api *sub_api)
{
 mutex_lock(&subsystem_mutex);
 list_del(&sub_api->sub_api_list);
 mutex_unlock(&subsystem_mutex);
}
