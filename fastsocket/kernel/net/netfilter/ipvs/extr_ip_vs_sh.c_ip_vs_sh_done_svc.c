
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_sh_bucket {int dummy; } ;
struct ip_vs_service {struct ip_vs_sh_bucket* sched_data; } ;


 int IP_VS_DBG (int,char*,int) ;
 int IP_VS_SH_TAB_SIZE ;
 int ip_vs_sh_flush (struct ip_vs_sh_bucket*) ;
 int kfree (struct ip_vs_sh_bucket*) ;

__attribute__((used)) static int ip_vs_sh_done_svc(struct ip_vs_service *svc)
{
 struct ip_vs_sh_bucket *tbl = svc->sched_data;


 ip_vs_sh_flush(tbl);


 kfree(svc->sched_data);
 IP_VS_DBG(6, "SH hash table (memory=%Zdbytes) released\n",
    sizeof(struct ip_vs_sh_bucket)*IP_VS_SH_TAB_SIZE);

 return 0;
}
