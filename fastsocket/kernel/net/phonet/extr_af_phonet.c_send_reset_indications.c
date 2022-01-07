
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dev; } ;
struct phonethdr {int pn_robj; int pn_rdev; int pn_sdev; } ;
typedef int data ;


 int PN_COMMGR ;
 struct phonethdr* pn_hdr (struct sk_buff*) ;
 int pn_object (int ,int) ;
 int pn_raw_send (int const*,int,int ,int ,int ,int ) ;

__attribute__((used)) static int send_reset_indications(struct sk_buff *rskb)
{
 struct phonethdr *oph = pn_hdr(rskb);
 static const u8 data[4] = {
  0x00 , 0x10 ,
  0x00 , 0x00
 };

 return pn_raw_send(data, sizeof(data), rskb->dev,
    pn_object(oph->pn_sdev, 0x00),
    pn_object(oph->pn_rdev, oph->pn_robj),
    PN_COMMGR);
}
