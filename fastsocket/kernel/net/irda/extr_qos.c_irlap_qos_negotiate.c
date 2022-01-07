
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_16__ {int value; } ;
struct TYPE_15__ {int value; } ;
struct TYPE_14__ {int value; } ;
struct TYPE_13__ {int value; } ;
struct TYPE_12__ {int value; } ;
struct TYPE_11__ {int value; } ;
struct TYPE_10__ {int value; } ;
struct TYPE_17__ {TYPE_7__ link_disc_time; TYPE_6__ min_turn_time; TYPE_5__ max_turn_time; TYPE_4__ additional_bofs; TYPE_3__ window_size; TYPE_2__ data_size; TYPE_1__ baud_rate; } ;
struct irlap_cb {TYPE_8__ qos_tx; TYPE_8__ qos_rx; } ;


 int IRDA_DEBUG (int,char*,int ) ;
 int irda_param_extract_all (struct irlap_cb*,int ,int ,int *) ;
 int irda_qos_bits_to_value (TYPE_8__*) ;
 int irlap_adjust_qos_settings (TYPE_8__*) ;
 int irlap_param_info ;

int irlap_qos_negotiate(struct irlap_cb *self, struct sk_buff *skb)
{
 int ret;

 ret = irda_param_extract_all(self, skb->data, skb->len,
         &irlap_param_info);


 irda_qos_bits_to_value(&self->qos_tx);
 irda_qos_bits_to_value(&self->qos_rx);

 irlap_adjust_qos_settings(&self->qos_tx);

 IRDA_DEBUG(2, "Setting BAUD_RATE to %d bps.\n",
     self->qos_tx.baud_rate.value);
 IRDA_DEBUG(2, "Setting DATA_SIZE to %d bytes\n",
     self->qos_tx.data_size.value);
 IRDA_DEBUG(2, "Setting WINDOW_SIZE to %d\n",
     self->qos_tx.window_size.value);
 IRDA_DEBUG(2, "Setting XBOFS to %d\n",
     self->qos_tx.additional_bofs.value);
 IRDA_DEBUG(2, "Setting MAX_TURN_TIME to %d ms.\n",
     self->qos_tx.max_turn_time.value);
 IRDA_DEBUG(2, "Setting MIN_TURN_TIME to %d usecs.\n",
     self->qos_tx.min_turn_time.value);
 IRDA_DEBUG(2, "Setting LINK_DISC to %d secs.\n",
     self->qos_tx.link_disc_time.value);
 return ret;
}
