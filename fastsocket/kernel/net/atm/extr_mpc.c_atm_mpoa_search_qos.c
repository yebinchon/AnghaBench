
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_mpoa_qos {scalar_t__ ipaddr; struct atm_mpoa_qos* next; } ;
typedef scalar_t__ __be32 ;


 struct atm_mpoa_qos* qos_head ;

struct atm_mpoa_qos *atm_mpoa_search_qos(__be32 dst_ip)
{
 struct atm_mpoa_qos *qos;

 qos = qos_head;
 while( qos != ((void*)0) ){
  if(qos->ipaddr == dst_ip) {
   break;
  }
  qos = qos->next;
 }

 return qos;
}
