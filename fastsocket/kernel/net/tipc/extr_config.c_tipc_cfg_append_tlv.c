
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlv_desc {void* tlv_len; void* tlv_type; } ;
struct sk_buff {int dummy; } ;


 int TLV_DATA (struct tlv_desc*) ;
 int TLV_LENGTH (int) ;
 int TLV_SPACE (int) ;
 int dbg (char*) ;
 void* htons (int) ;
 int memcpy (int ,void*,int) ;
 int skb_put (struct sk_buff*,int) ;
 scalar_t__ skb_tail_pointer (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;

int tipc_cfg_append_tlv(struct sk_buff *buf, int tlv_type,
   void *tlv_data, int tlv_data_size)
{
 struct tlv_desc *tlv = (struct tlv_desc *)skb_tail_pointer(buf);
 int new_tlv_space = TLV_SPACE(tlv_data_size);

 if (skb_tailroom(buf) < new_tlv_space) {
  dbg("tipc_cfg_append_tlv unable to append TLV\n");
  return 0;
 }
 skb_put(buf, new_tlv_space);
 tlv->tlv_type = htons(tlv_type);
 tlv->tlv_len = htons(TLV_LENGTH(tlv_data_size));
 if (tlv_data_size && tlv_data)
  memcpy(TLV_DATA(tlv), tlv_data, tlv_data_size);
 return 1;
}
