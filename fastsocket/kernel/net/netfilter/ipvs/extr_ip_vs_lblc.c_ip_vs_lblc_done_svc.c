
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {struct ip_vs_lblc_table* sched_data; } ;
struct ip_vs_lblc_table {int periodic_timer; } ;


 int IP_VS_DBG (int,char*,int) ;
 int del_timer_sync (int *) ;
 int ip_vs_lblc_flush (struct ip_vs_lblc_table*) ;
 int kfree (struct ip_vs_lblc_table*) ;

__attribute__((used)) static int ip_vs_lblc_done_svc(struct ip_vs_service *svc)
{
 struct ip_vs_lblc_table *tbl = svc->sched_data;


 del_timer_sync(&tbl->periodic_timer);


 ip_vs_lblc_flush(tbl);


 kfree(tbl);
 IP_VS_DBG(6, "LBLC hash table (memory=%Zdbytes) released\n",
    sizeof(*tbl));

 return 0;
}
