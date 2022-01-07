
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_cluster {int cl_keepalive_delay_ms; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t o2nm_cluster_attr_keepalive_delay_ms_read(
 struct o2nm_cluster *cluster, char *page)
{
 return sprintf(page, "%u\n", cluster->cl_keepalive_delay_ms);
}
