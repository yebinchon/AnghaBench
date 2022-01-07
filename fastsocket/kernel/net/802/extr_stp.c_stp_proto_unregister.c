
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_proto {size_t* group_address; } ;


 size_t GARP_ADDR_MIN ;
 int * garp_protos ;
 scalar_t__ is_zero_ether_addr (size_t*) ;
 int llc_sap_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 int sap ;
 scalar_t__ sap_registered ;
 int stp_proto ;
 int stp_proto_mutex ;
 int synchronize_rcu () ;

void stp_proto_unregister(const struct stp_proto *proto)
{
 mutex_lock(&stp_proto_mutex);
 if (is_zero_ether_addr(proto->group_address))
  rcu_assign_pointer(stp_proto, ((void*)0));
 else
  rcu_assign_pointer(garp_protos[proto->group_address[5] -
            GARP_ADDR_MIN], ((void*)0));
 synchronize_rcu();

 if (--sap_registered == 0)
  llc_sap_put(sap);
 mutex_unlock(&stp_proto_mutex);
}
