
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void const tlv_desc ;
struct tipc_name_table_query {int upbound; int lowbound; int type; int depth; } ;
struct sk_buff {scalar_t__ data; } ;
struct print_buf {int dummy; } ;


 int MAX_NAME_TBL_QUERY ;
 int TIPC_CFG_TLV_ERROR ;
 int TIPC_TLV_NAME_TBL_QUERY ;
 int TIPC_TLV_ULTRA_STRING ;
 int TLV_CHECK (void const*,int,int ) ;
 scalar_t__ TLV_DATA (void const*) ;
 int TLV_SET (void const*,int ,int *,int) ;
 int TLV_SPACE (int) ;
 int nametbl_list (struct print_buf*,int ,int ,int ,int ) ;
 int ntohl (int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int skb_put (struct sk_buff*,int ) ;
 struct sk_buff* tipc_cfg_reply_alloc (int ) ;
 struct sk_buff* tipc_cfg_reply_error_string (int ) ;
 int tipc_nametbl_lock ;
 int tipc_printbuf_init (struct print_buf*,scalar_t__,int) ;
 int tipc_printbuf_validate (struct print_buf*) ;

struct sk_buff *tipc_nametbl_get(const void *req_tlv_area, int req_tlv_space)
{
 struct sk_buff *buf;
 struct tipc_name_table_query *argv;
 struct tlv_desc *rep_tlv;
 struct print_buf b;
 int str_len;

 if (!TLV_CHECK(req_tlv_area, req_tlv_space, TIPC_TLV_NAME_TBL_QUERY))
  return tipc_cfg_reply_error_string(TIPC_CFG_TLV_ERROR);

 buf = tipc_cfg_reply_alloc(TLV_SPACE(MAX_NAME_TBL_QUERY));
 if (!buf)
  return ((void*)0);

 rep_tlv = (struct tlv_desc *)buf->data;
 tipc_printbuf_init(&b, TLV_DATA(rep_tlv), MAX_NAME_TBL_QUERY);
 argv = (struct tipc_name_table_query *)TLV_DATA(req_tlv_area);
 read_lock_bh(&tipc_nametbl_lock);
 nametbl_list(&b, ntohl(argv->depth), ntohl(argv->type),
       ntohl(argv->lowbound), ntohl(argv->upbound));
 read_unlock_bh(&tipc_nametbl_lock);
 str_len = tipc_printbuf_validate(&b);

 skb_put(buf, TLV_SPACE(str_len));
 TLV_SET(rep_tlv, TIPC_TLV_ULTRA_STRING, ((void*)0), str_len);

 return buf;
}
