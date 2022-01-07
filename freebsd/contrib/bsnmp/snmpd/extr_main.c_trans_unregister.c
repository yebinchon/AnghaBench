
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {int or_index; int table; } ;


 int SNMP_ERR_INCONS_VALUE ;
 int SNMP_ERR_NOERROR ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct transport*,int ) ;
 int link ;
 int or_unregister (int ) ;
 int transport_list ;

int
trans_unregister(struct transport *t)
{
 if (!TAILQ_EMPTY(&t->table))
  return (SNMP_ERR_INCONS_VALUE);

 or_unregister(t->or_index);
 TAILQ_REMOVE(&transport_list, t, link);

 return (SNMP_ERR_NOERROR);
}
