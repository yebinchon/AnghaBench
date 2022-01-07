
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
struct snd_seq_client_port {int closing; TYPE_1__ c_dest; TYPE_1__ c_src; int private_data; int (* private_free ) (int ) ;int use_lock; } ;
struct snd_seq_client {int dummy; } ;


 int DEST_LIST ;
 int SRC_LIST ;
 int clear_subscriber_list (struct snd_seq_client*,struct snd_seq_client_port*,TYPE_1__*,int ) ;
 int kfree (struct snd_seq_client_port*) ;
 int snd_BUG_ON (int) ;
 int snd_use_lock_sync (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static int port_delete(struct snd_seq_client *client,
         struct snd_seq_client_port *port)
{

 port->closing = 1;
 snd_use_lock_sync(&port->use_lock);


 clear_subscriber_list(client, port, &port->c_src, SRC_LIST);
 clear_subscriber_list(client, port, &port->c_dest, DEST_LIST);

 if (port->private_free)
  port->private_free(port->private_data);

 snd_BUG_ON(port->c_src.count != 0);
 snd_BUG_ON(port->c_dest.count != 0);

 kfree(port);
 return 0;
}
