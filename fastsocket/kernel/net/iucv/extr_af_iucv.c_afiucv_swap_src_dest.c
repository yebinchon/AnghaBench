
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct af_iucv_trans_hdr {char* destUserID; char* destAppName; char* srcUserID; char* srcAppName; } ;


 int ASCEBC (char*,int) ;
 int ETH_HLEN ;
 int memcpy (char*,char*,int) ;
 int memset (scalar_t__,int ,int ) ;
 int skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static void afiucv_swap_src_dest(struct sk_buff *skb)
{
 struct af_iucv_trans_hdr *trans_hdr =
    (struct af_iucv_trans_hdr *)skb->data;
 char tmpID[8];
 char tmpName[8];

 ASCEBC(trans_hdr->destUserID, sizeof(trans_hdr->destUserID));
 ASCEBC(trans_hdr->destAppName, sizeof(trans_hdr->destAppName));
 ASCEBC(trans_hdr->srcUserID, sizeof(trans_hdr->srcUserID));
 ASCEBC(trans_hdr->srcAppName, sizeof(trans_hdr->srcAppName));
 memcpy(tmpID, trans_hdr->srcUserID, 8);
 memcpy(tmpName, trans_hdr->srcAppName, 8);
 memcpy(trans_hdr->srcUserID, trans_hdr->destUserID, 8);
 memcpy(trans_hdr->srcAppName, trans_hdr->destAppName, 8);
 memcpy(trans_hdr->destUserID, tmpID, 8);
 memcpy(trans_hdr->destAppName, tmpName, 8);
 skb_push(skb, ETH_HLEN);
 memset(skb->data, 0, ETH_HLEN);
}
