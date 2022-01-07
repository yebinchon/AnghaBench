
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct l2cap_pinfo {int mode; int conf_state; unsigned long imtu; void* fcs; int dcid; TYPE_1__* conn; scalar_t__ num_conf_rsp; scalar_t__ num_conf_req; } ;
struct l2cap_conf_rfc {int mode; void* max_pdu_size; int monitor_timeout; int retrans_timeout; int max_transmit; int txwin_size; } ;
struct l2cap_conf_req {void* flags; void* dcid; void* data; } ;
typedef int rfc ;
struct TYPE_2__ {int feat_mask; } ;


 int BT_DBG (char*,struct sock*) ;
 int L2CAP_CONF_FCS ;
 int L2CAP_CONF_MTU ;
 int L2CAP_CONF_NO_FCS_RECV ;
 int L2CAP_CONF_RFC ;
 int L2CAP_CONF_STATE2_DEVICE ;
 int L2CAP_DEFAULT_MAX_PDU_SIZE ;
 int L2CAP_DEFAULT_MAX_TX ;
 unsigned long L2CAP_DEFAULT_MTU ;
 int L2CAP_DEFAULT_TX_WINDOW ;
 void* L2CAP_FCS_NONE ;
 int L2CAP_FEAT_FCS ;



 void* cpu_to_le16 (int ) ;
 int l2cap_add_conf_opt (void**,int ,int,unsigned long) ;
 int l2cap_mode_supported (int,int) ;
 struct l2cap_pinfo* l2cap_pi (struct sock*) ;
 int l2cap_select_mode (int,int) ;
 int l2cap_send_disconn_req (TYPE_1__*,struct sock*) ;

__attribute__((used)) static int l2cap_build_conf_req(struct sock *sk, void *data)
{
 struct l2cap_pinfo *pi = l2cap_pi(sk);
 struct l2cap_conf_req *req = data;
 struct l2cap_conf_rfc rfc = { .mode = 130 };
 void *ptr = req->data;

 BT_DBG("sk %p", sk);

 if (pi->num_conf_req || pi->num_conf_rsp)
  goto done;

 switch (pi->mode) {
 case 128:
 case 129:
  pi->conf_state |= L2CAP_CONF_STATE2_DEVICE;
  if (!l2cap_mode_supported(pi->mode, pi->conn->feat_mask))
   l2cap_send_disconn_req(pi->conn, sk);
  break;
 default:
  pi->mode = l2cap_select_mode(rfc.mode, pi->conn->feat_mask);
  break;
 }

done:
 switch (pi->mode) {
 case 130:
  if (pi->imtu != L2CAP_DEFAULT_MTU)
   l2cap_add_conf_opt(&ptr, L2CAP_CONF_MTU, 2, pi->imtu);
  break;

 case 129:
  rfc.mode = 129;
  rfc.txwin_size = L2CAP_DEFAULT_TX_WINDOW;
  rfc.max_transmit = L2CAP_DEFAULT_MAX_TX;
  rfc.retrans_timeout = 0;
  rfc.monitor_timeout = 0;
  rfc.max_pdu_size = cpu_to_le16(L2CAP_DEFAULT_MAX_PDU_SIZE);

  l2cap_add_conf_opt(&ptr, L2CAP_CONF_RFC,
     sizeof(rfc), (unsigned long) &rfc);

  if (!(pi->conn->feat_mask & L2CAP_FEAT_FCS))
   break;

  if (pi->fcs == L2CAP_FCS_NONE ||
    pi->conf_state & L2CAP_CONF_NO_FCS_RECV) {
   pi->fcs = L2CAP_FCS_NONE;
   l2cap_add_conf_opt(&ptr, L2CAP_CONF_FCS, 1, pi->fcs);
  }
  break;

 case 128:
  rfc.mode = 128;
  rfc.txwin_size = 0;
  rfc.max_transmit = 0;
  rfc.retrans_timeout = 0;
  rfc.monitor_timeout = 0;
  rfc.max_pdu_size = cpu_to_le16(L2CAP_DEFAULT_MAX_PDU_SIZE);

  l2cap_add_conf_opt(&ptr, L2CAP_CONF_RFC,
     sizeof(rfc), (unsigned long) &rfc);

  if (!(pi->conn->feat_mask & L2CAP_FEAT_FCS))
   break;

  if (pi->fcs == L2CAP_FCS_NONE ||
    pi->conf_state & L2CAP_CONF_NO_FCS_RECV) {
   pi->fcs = L2CAP_FCS_NONE;
   l2cap_add_conf_opt(&ptr, L2CAP_CONF_FCS, 1, pi->fcs);
  }
  break;
 }





 req->dcid = cpu_to_le16(pi->dcid);
 req->flags = cpu_to_le16(0);

 return ptr - data;
}
