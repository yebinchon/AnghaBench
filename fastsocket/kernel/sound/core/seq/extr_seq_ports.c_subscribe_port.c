
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_seq_port_subscribe {int dummy; } ;
struct snd_seq_port_subs_info {int count; int (* open ) (int ,struct snd_seq_port_subscribe*) ;} ;
struct TYPE_2__ {int port; int client; } ;
struct snd_seq_client_port {TYPE_1__ addr; int owner; int private_data; scalar_t__ callback_all; } ;
struct snd_seq_client {scalar_t__ type; } ;


 int EFAULT ;
 int SNDRV_SEQ_EVENT_PORT_SUBSCRIBED ;
 scalar_t__ USER_CLIENT ;
 int module_put (int ) ;
 int snd_seq_client_notify_subscription (int ,int ,struct snd_seq_port_subscribe*,int ) ;
 int stub1 (int ,struct snd_seq_port_subscribe*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int subscribe_port(struct snd_seq_client *client,
     struct snd_seq_client_port *port,
     struct snd_seq_port_subs_info *grp,
     struct snd_seq_port_subscribe *info,
     int send_ack)
{
 int err = 0;

 if (!try_module_get(port->owner))
  return -EFAULT;
 grp->count++;
 if (grp->open && (port->callback_all || grp->count == 1)) {
  err = grp->open(port->private_data, info);
  if (err < 0) {
   module_put(port->owner);
   grp->count--;
  }
 }
 if (err >= 0 && send_ack && client->type == USER_CLIENT)
  snd_seq_client_notify_subscription(port->addr.client, port->addr.port,
         info, SNDRV_SEQ_EVENT_PORT_SUBSCRIBED);

 return err;
}
