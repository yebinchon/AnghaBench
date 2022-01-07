
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iucv_path {TYPE_3__* handler; } ;
struct TYPE_5__ {int ipbfln1f; } ;
struct TYPE_4__ {int iprmmsg1; } ;
struct iucv_message_pending {size_t ippathid; int ipflags1; int ipbfln2f; TYPE_2__ ln1msg2; TYPE_1__ ln1msg1; int iptrgcls; int ipmsgid; } ;
struct iucv_message {int flags; int length; int reply_size; int rmmsg; int class; int id; } ;
struct iucv_irq_data {int dummy; } ;
struct TYPE_6__ {int (* message_pending ) (struct iucv_path*,struct iucv_message*) ;} ;


 int IUCV_IPRMDATA ;
 struct iucv_path** iucv_path_table ;
 int memcpy (int ,int ,int) ;
 int stub1 (struct iucv_path*,struct iucv_message*) ;

__attribute__((used)) static void iucv_message_pending(struct iucv_irq_data *data)
{
 struct iucv_message_pending *imp = (void *) data;
 struct iucv_path *path = iucv_path_table[imp->ippathid];
 struct iucv_message msg;

 if (path && path->handler && path->handler->message_pending) {
  msg.flags = imp->ipflags1;
  msg.id = imp->ipmsgid;
  msg.class = imp->iptrgcls;
  if (imp->ipflags1 & IUCV_IPRMDATA) {
   memcpy(msg.rmmsg, imp->ln1msg1.iprmmsg1, 8);
   msg.length = 8;
  } else
   msg.length = imp->ln1msg2.ipbfln1f;
  msg.reply_size = imp->ipbfln2f;
  path->handler->message_pending(path, &msg);
 }
}
