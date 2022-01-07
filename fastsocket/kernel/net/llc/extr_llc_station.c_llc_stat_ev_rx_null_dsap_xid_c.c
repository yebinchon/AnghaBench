
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_station_state_ev {scalar_t__ type; } ;
struct llc_pdu_un {int dsap; } ;


 scalar_t__ LLC_1_PDU_CMD_XID ;
 scalar_t__ LLC_PDU_IS_CMD (struct llc_pdu_un*) ;
 scalar_t__ LLC_PDU_TYPE_IS_U (struct llc_pdu_un*) ;
 scalar_t__ LLC_STATION_EV_TYPE_PDU ;
 scalar_t__ LLC_U_PDU_CMD (struct llc_pdu_un*) ;
 struct llc_pdu_un* llc_pdu_un_hdr (struct sk_buff*) ;
 struct llc_station_state_ev* llc_station_ev (struct sk_buff*) ;

__attribute__((used)) static int llc_stat_ev_rx_null_dsap_xid_c(struct sk_buff *skb)
{
 struct llc_station_state_ev *ev = llc_station_ev(skb);
 struct llc_pdu_un *pdu = llc_pdu_un_hdr(skb);

 return ev->type == LLC_STATION_EV_TYPE_PDU &&
        LLC_PDU_IS_CMD(pdu) &&
        LLC_PDU_TYPE_IS_U(pdu) &&
        LLC_U_PDU_CMD(pdu) == LLC_1_PDU_CMD_XID &&
        !pdu->dsap ? 0 : 1;
}
