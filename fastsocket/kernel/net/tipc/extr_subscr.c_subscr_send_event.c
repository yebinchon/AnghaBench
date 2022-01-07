
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tipc_event {int dummy; } ;
struct TYPE_3__ {void* node; void* ref; } ;
struct TYPE_4__ {TYPE_1__ port; void* found_upper; void* found_lower; void* event; } ;
struct subscription {int server_ref; int swap; TYPE_2__ evt; } ;
struct iovec {int iov_len; void* iov_base; } ;


 void* htohl (int ,int ) ;
 int tipc_send (int ,int,struct iovec*) ;

__attribute__((used)) static void subscr_send_event(struct subscription *sub,
         u32 found_lower,
         u32 found_upper,
         u32 event,
         u32 port_ref,
         u32 node)
{
 struct iovec msg_sect;

 msg_sect.iov_base = (void *)&sub->evt;
 msg_sect.iov_len = sizeof(struct tipc_event);

 sub->evt.event = htohl(event, sub->swap);
 sub->evt.found_lower = htohl(found_lower, sub->swap);
 sub->evt.found_upper = htohl(found_upper, sub->swap);
 sub->evt.port.ref = htohl(port_ref, sub->swap);
 sub->evt.port.node = htohl(node, sub->swap);
 tipc_send(sub->server_ref, 1, &msg_sect);
}
