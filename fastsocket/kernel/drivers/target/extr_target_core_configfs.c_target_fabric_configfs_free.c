
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_fabric_configfs {int tf_list; } ;


 int g_tf_lock ;
 int kfree (struct target_fabric_configfs*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void target_fabric_configfs_free(
 struct target_fabric_configfs *tf)
{
 mutex_lock(&g_tf_lock);
 list_del(&tf->tf_list);
 mutex_unlock(&g_tf_lock);

 kfree(tf);
}
