
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct garp_application* data; int rcv; } ;
struct garp_application {TYPE_1__ proto; } ;


 int garp_pdu_rcv ;
 int stp_proto_register (TYPE_1__*) ;

int garp_register_application(struct garp_application *appl)
{
 appl->proto.rcv = garp_pdu_rcv;
 appl->proto.data = appl;
 return stp_proto_register(&appl->proto);
}
