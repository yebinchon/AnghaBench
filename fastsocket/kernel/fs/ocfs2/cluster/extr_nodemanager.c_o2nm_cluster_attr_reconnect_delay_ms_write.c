
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_cluster {int cl_reconnect_delay_ms; } ;
typedef int ssize_t ;


 int o2nm_cluster_attr_write (char const*,size_t,int *) ;

__attribute__((used)) static ssize_t o2nm_cluster_attr_reconnect_delay_ms_write(
 struct o2nm_cluster *cluster, const char *page, size_t count)
{
 return o2nm_cluster_attr_write(page, count,
                                &cluster->cl_reconnect_delay_ms);
}
