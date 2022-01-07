
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {struct ip_vs_dh_bucket* sched_data; } ;
struct ip_vs_dh_bucket {int dummy; } ;


 int IP_VS_DBG (int,char*,int) ;
 int IP_VS_DH_TAB_SIZE ;
 int ip_vs_dh_flush (struct ip_vs_dh_bucket*) ;
 int kfree (struct ip_vs_dh_bucket*) ;

__attribute__((used)) static int ip_vs_dh_done_svc(struct ip_vs_service *svc)
{
 struct ip_vs_dh_bucket *tbl = svc->sched_data;


 ip_vs_dh_flush(tbl);


 kfree(svc->sched_data);
 IP_VS_DBG(6, "DH hash table (memory=%Zdbytes) released\n",
    sizeof(struct ip_vs_dh_bucket)*IP_VS_DH_TAB_SIZE);

 return 0;
}
