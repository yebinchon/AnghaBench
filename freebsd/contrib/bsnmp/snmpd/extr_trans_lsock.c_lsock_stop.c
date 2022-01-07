
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 int lsock_remove ;
 int * my_trans ;
 int * trans_first_port (int *) ;
 int trans_iter_port (int *,int ,int ) ;
 int trans_unregister (int *) ;

__attribute__((used)) static int
lsock_stop(int force)
{

 if (my_trans != ((void*)0)) {
  if (!force && trans_first_port(my_trans) != ((void*)0))
   return (SNMP_ERR_GENERR);
  trans_iter_port(my_trans, lsock_remove, 0);
  return (trans_unregister(my_trans));
 }
 return (SNMP_ERR_NOERROR);
}
