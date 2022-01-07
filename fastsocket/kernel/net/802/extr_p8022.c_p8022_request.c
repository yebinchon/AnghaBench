
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct datalink_proto {TYPE_2__* sap; } ;
struct TYPE_3__ {int lsap; } ;
struct TYPE_4__ {TYPE_1__ laddr; } ;


 int llc_build_and_send_ui_pkt (TYPE_2__*,struct sk_buff*,unsigned char*,int ) ;

__attribute__((used)) static int p8022_request(struct datalink_proto *dl, struct sk_buff *skb,
    unsigned char *dest)
{
 llc_build_and_send_ui_pkt(dl->sap, skb, dest, dl->sap->laddr.lsap);
 return 0;
}
