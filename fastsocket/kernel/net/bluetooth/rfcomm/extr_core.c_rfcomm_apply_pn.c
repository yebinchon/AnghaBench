
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_session {scalar_t__ cfc; scalar_t__ mtu; } ;
struct rfcomm_pn {int flow_ctrl; int mtu; int priority; int credits; } ;
struct rfcomm_dlc {scalar_t__ cfc; scalar_t__ mtu; int priority; int flags; int tx_credits; int dlci; int state; struct rfcomm_session* session; } ;


 int BT_DBG (char*,struct rfcomm_dlc*,int ,int ,int ,int,int ) ;
 scalar_t__ RFCOMM_CFC_DISABLED ;
 scalar_t__ RFCOMM_CFC_ENABLED ;
 scalar_t__ RFCOMM_CFC_UNKNOWN ;
 int RFCOMM_TX_THROTTLED ;
 scalar_t__ __le16_to_cpu (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int rfcomm_apply_pn(struct rfcomm_dlc *d, int cr, struct rfcomm_pn *pn)
{
 struct rfcomm_session *s = d->session;

 BT_DBG("dlc %p state %ld dlci %d mtu %d fc 0x%x credits %d",
   d, d->state, d->dlci, pn->mtu, pn->flow_ctrl, pn->credits);

 if ((pn->flow_ctrl == 0xf0 && s->cfc != RFCOMM_CFC_DISABLED) ||
      pn->flow_ctrl == 0xe0) {
  d->cfc = RFCOMM_CFC_ENABLED;
  d->tx_credits = pn->credits;
 } else {
  d->cfc = RFCOMM_CFC_DISABLED;
  set_bit(RFCOMM_TX_THROTTLED, &d->flags);
 }

 if (s->cfc == RFCOMM_CFC_UNKNOWN)
  s->cfc = d->cfc;

 d->priority = pn->priority;

 d->mtu = __le16_to_cpu(pn->mtu);

 if (cr && d->mtu > s->mtu)
  d->mtu = s->mtu;

 return 0;
}
