
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int phdr; } ;
struct port {int user_port; TYPE_1__ publ; } ;
struct iovec {int dummy; } ;


 int MAX_MSG_SIZE ;
 scalar_t__ likely (struct sk_buff*) ;
 int msg_build (int *,struct iovec const*,unsigned int,int ,int,struct sk_buff**) ;
 int tipc_port_recv_msg (struct sk_buff*) ;

int tipc_port_recv_sections(struct port *sender, unsigned int num_sect,
         struct iovec const *msg_sect)
{
 struct sk_buff *buf;
 int res;

 res = msg_build(&sender->publ.phdr, msg_sect, num_sect,
   MAX_MSG_SIZE, !sender->user_port, &buf);
 if (likely(buf))
  tipc_port_recv_msg(buf);
 return res;
}
