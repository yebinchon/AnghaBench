
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_seq_port_subscribe {int dummy; } ;
struct snd_seq_port_subs_info {scalar_t__ count; int (* close ) (int ,struct snd_seq_port_subscribe*) ;} ;
struct TYPE_2__ {int port; int client; } ;
struct snd_seq_client_port {int owner; TYPE_1__ addr; int private_data; scalar_t__ callback_all; } ;
struct snd_seq_client {scalar_t__ type; } ;


 int EINVAL ;
 int SNDRV_SEQ_EVENT_PORT_UNSUBSCRIBED ;
 scalar_t__ USER_CLIENT ;
 int module_put (int ) ;
 int snd_seq_client_notify_subscription (int ,int ,struct snd_seq_port_subscribe*,int ) ;
 int stub1 (int ,struct snd_seq_port_subscribe*) ;

__attribute__((used)) static int unsubscribe_port(struct snd_seq_client *client,
       struct snd_seq_client_port *port,
       struct snd_seq_port_subs_info *grp,
       struct snd_seq_port_subscribe *info,
       int send_ack)
{
 int err = 0;

 if (! grp->count)
  return -EINVAL;
 grp->count--;
 if (grp->close && (port->callback_all || grp->count == 0))
  err = grp->close(port->private_data, info);
 if (send_ack && client->type == USER_CLIENT)
  snd_seq_client_notify_subscription(port->addr.client, port->addr.port,
         info, SNDRV_SEQ_EVENT_PORT_UNSUBSCRIBED);
 module_put(port->owner);
 return err;
}
