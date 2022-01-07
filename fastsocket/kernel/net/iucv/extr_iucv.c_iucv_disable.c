
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_online_cpus () ;
 int * iucv_path_table ;
 int iucv_retrieve_cpu ;
 int kfree (int *) ;
 int on_each_cpu (int ,int *,int) ;
 int put_online_cpus () ;

__attribute__((used)) static void iucv_disable(void)
{
 get_online_cpus();
 on_each_cpu(iucv_retrieve_cpu, ((void*)0), 1);
 kfree(iucv_path_table);
 iucv_path_table = ((void*)0);
 put_online_cpus();
}
