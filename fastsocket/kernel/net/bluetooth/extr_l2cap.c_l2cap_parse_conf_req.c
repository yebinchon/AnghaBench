
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sock {int dummy; } ;
struct l2cap_pinfo {int conf_len; unsigned long flush_to; int num_conf_rsp; int mode; unsigned long omtu; unsigned long fcs; int dcid; int conf_state; int max_pdu_size; int remote_tx_win; int remote_max_tx; TYPE_1__* conn; scalar_t__ num_conf_req; void* conf_req; } ;
struct l2cap_conf_rsp {void* flags; void* result; void* scid; void* data; } ;
struct l2cap_conf_rfc {int mode; int max_pdu_size; int txwin_size; int monitor_timeout; int retrans_timeout; int max_transmit; } ;
typedef int rfc ;
struct TYPE_2__ {int feat_mask; } ;


 int BT_DBG (char*,struct sock*) ;
 int ECONNREFUSED ;


 int L2CAP_CONF_HINT ;
 int L2CAP_CONF_MASK ;
 int L2CAP_CONF_MODE_DONE ;

 int L2CAP_CONF_MTU_DONE ;
 int L2CAP_CONF_NO_FCS_RECV ;
 int L2CAP_CONF_OPT_SIZE ;
 int L2CAP_CONF_OUTPUT_DONE ;


 int L2CAP_CONF_STATE2_DEVICE ;
 scalar_t__ L2CAP_CONF_SUCCESS ;
 scalar_t__ L2CAP_CONF_UNACCEPT ;
 scalar_t__ L2CAP_CONF_UNKNOWN ;
 scalar_t__ L2CAP_DEFAULT_MIN_MTU ;
 int L2CAP_DEFAULT_MONITOR_TO ;
 scalar_t__ L2CAP_DEFAULT_MTU ;
 int L2CAP_DEFAULT_RETRANS_TO ;
 unsigned long L2CAP_FCS_NONE ;



 void* cpu_to_le16 (int) ;
 int l2cap_add_conf_opt (void**,int const,int,unsigned long) ;
 scalar_t__ l2cap_get_conf_opt (void**,int*,int*,unsigned long*) ;
 int l2cap_mode_supported (int,int ) ;
 struct l2cap_pinfo* l2cap_pi (struct sock*) ;
 int l2cap_select_mode (int,int ) ;
 int memcpy (struct l2cap_conf_rfc*,void*,int) ;
 int memset (struct l2cap_conf_rfc*,int ,int) ;

__attribute__((used)) static int l2cap_parse_conf_req(struct sock *sk, void *data)
{
 struct l2cap_pinfo *pi = l2cap_pi(sk);
 struct l2cap_conf_rsp *rsp = data;
 void *ptr = rsp->data;
 void *req = pi->conf_req;
 int len = pi->conf_len;
 int type, hint, olen;
 unsigned long val;
 struct l2cap_conf_rfc rfc = { .mode = 130 };
 u16 mtu = L2CAP_DEFAULT_MTU;
 u16 result = L2CAP_CONF_SUCCESS;

 BT_DBG("sk %p", sk);

 while (len >= L2CAP_CONF_OPT_SIZE) {
  len -= l2cap_get_conf_opt(&req, &type, &olen, &val);

  hint = type & L2CAP_CONF_HINT;
  type &= L2CAP_CONF_MASK;

  switch (type) {
  case 133:
   mtu = val;
   break;

  case 134:
   pi->flush_to = val;
   break;

  case 132:
   break;

  case 131:
   if (olen == sizeof(rfc))
    memcpy(&rfc, (void *) val, olen);
   break;

  case 135:
   if (val == L2CAP_FCS_NONE)
    pi->conf_state |= L2CAP_CONF_NO_FCS_RECV;

   break;

  default:
   if (hint)
    break;

   result = L2CAP_CONF_UNKNOWN;
   *((u8 *) ptr++) = type;
   break;
  }
 }

 if (pi->num_conf_rsp || pi->num_conf_req)
  goto done;

 switch (pi->mode) {
 case 128:
 case 129:
  pi->conf_state |= L2CAP_CONF_STATE2_DEVICE;
  if (!l2cap_mode_supported(pi->mode, pi->conn->feat_mask))
   return -ECONNREFUSED;
  break;
 default:
  pi->mode = l2cap_select_mode(rfc.mode, pi->conn->feat_mask);
  break;
 }

done:
 if (pi->mode != rfc.mode) {
  result = L2CAP_CONF_UNACCEPT;
  rfc.mode = pi->mode;

  if (pi->num_conf_rsp == 1)
   return -ECONNREFUSED;

  l2cap_add_conf_opt(&ptr, 131,
     sizeof(rfc), (unsigned long) &rfc);
 }


 if (result == L2CAP_CONF_SUCCESS) {



  if (mtu < L2CAP_DEFAULT_MIN_MTU)
   result = L2CAP_CONF_UNACCEPT;
  else {
   pi->omtu = mtu;
   pi->conf_state |= L2CAP_CONF_MTU_DONE;
  }
  l2cap_add_conf_opt(&ptr, 133, 2, pi->omtu);

  switch (rfc.mode) {
  case 130:
   pi->fcs = L2CAP_FCS_NONE;
   pi->conf_state |= L2CAP_CONF_MODE_DONE;
   break;

  case 129:
   pi->remote_tx_win = rfc.txwin_size;
   pi->remote_max_tx = rfc.max_transmit;
   pi->max_pdu_size = rfc.max_pdu_size;

   rfc.retrans_timeout = L2CAP_DEFAULT_RETRANS_TO;
   rfc.monitor_timeout = L2CAP_DEFAULT_MONITOR_TO;

   pi->conf_state |= L2CAP_CONF_MODE_DONE;

   l2cap_add_conf_opt(&ptr, 131,
     sizeof(rfc), (unsigned long) &rfc);

   break;

  case 128:
   pi->remote_tx_win = rfc.txwin_size;
   pi->max_pdu_size = rfc.max_pdu_size;

   pi->conf_state |= L2CAP_CONF_MODE_DONE;

   l2cap_add_conf_opt(&ptr, 131,
     sizeof(rfc), (unsigned long) &rfc);

   break;

  default:
   result = L2CAP_CONF_UNACCEPT;

   memset(&rfc, 0, sizeof(rfc));
   rfc.mode = pi->mode;
  }

  if (result == L2CAP_CONF_SUCCESS)
   pi->conf_state |= L2CAP_CONF_OUTPUT_DONE;
 }
 rsp->scid = cpu_to_le16(pi->dcid);
 rsp->result = cpu_to_le16(result);
 rsp->flags = cpu_to_le16(0x0000);

 return ptr - data;
}
