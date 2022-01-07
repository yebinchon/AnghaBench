
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_msg {int dummy; } ;
struct TYPE_2__ {struct tipc_msg phdr; } ;
struct port {TYPE_1__ publ; } ;


 scalar_t__ likely (int) ;
 int msg_routed (struct tipc_msg*) ;
 int msg_set_transp_seqno (struct tipc_msg*,scalar_t__) ;
 scalar_t__ msg_transp_seqno (struct tipc_msg*) ;

__attribute__((used)) static void port_incr_out_seqno(struct port *p_ptr)
{
 struct tipc_msg *m = &p_ptr->publ.phdr;

 if (likely(!msg_routed(m)))
  return;
 msg_set_transp_seqno(m, (msg_transp_seqno(m) + 1));
}
