
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_proto {size_t* group_address; } ;


 int ENOMEM ;
 size_t GARP_ADDR_MIN ;
 int LLC_SAP_BSPAN ;
 int * garp_protos ;
 scalar_t__ is_zero_ether_addr (size_t*) ;
 int llc_sap_open (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,struct stp_proto const*) ;
 int sap ;
 int sap_registered ;
 int stp_pdu_rcv ;
 int stp_proto ;
 int stp_proto_mutex ;

int stp_proto_register(const struct stp_proto *proto)
{
 int err = 0;

 mutex_lock(&stp_proto_mutex);
 if (sap_registered++ == 0) {
  sap = llc_sap_open(LLC_SAP_BSPAN, stp_pdu_rcv);
  if (!sap) {
   err = -ENOMEM;
   goto out;
  }
 }
 if (is_zero_ether_addr(proto->group_address))
  rcu_assign_pointer(stp_proto, proto);
 else
  rcu_assign_pointer(garp_protos[proto->group_address[5] -
            GARP_ADDR_MIN], proto);
out:
 mutex_unlock(&stp_proto_mutex);
 return err;
}
