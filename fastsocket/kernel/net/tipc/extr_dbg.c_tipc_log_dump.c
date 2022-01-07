
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tlv_desc {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct print_buf {int dummy; } ;
struct TYPE_4__ {int size; int buf; } ;


 TYPE_1__* TIPC_LOG ;
 int TIPC_TLV_ULTRA_STRING ;
 int TLV_DATA (struct tlv_desc*) ;
 int TLV_SET (struct tlv_desc*,int ,int *,int) ;
 int TLV_SPACE (int) ;
 int min (int ,unsigned int) ;
 int print_lock ;
 int skb_put (struct sk_buff*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int strlen (int ) ;
 struct sk_buff* tipc_cfg_reply_alloc (int ) ;
 struct sk_buff* tipc_cfg_reply_ultra_string (char*) ;
 scalar_t__ tipc_printbuf_empty (TYPE_1__*) ;
 int tipc_printbuf_init (struct print_buf*,int ,int) ;
 int tipc_printbuf_move (struct print_buf*,TYPE_1__*) ;

struct sk_buff *tipc_log_dump(void)
{
 struct sk_buff *reply;

 spin_lock_bh(&print_lock);
 if (!TIPC_LOG->buf) {
  spin_unlock_bh(&print_lock);
  reply = tipc_cfg_reply_ultra_string("log not activated\n");
 } else if (tipc_printbuf_empty(TIPC_LOG)) {
  spin_unlock_bh(&print_lock);
  reply = tipc_cfg_reply_ultra_string("log is empty\n");
 }
 else {
  struct tlv_desc *rep_tlv;
  struct print_buf pb;
  int str_len;

  str_len = min(TIPC_LOG->size, 32768u);
  spin_unlock_bh(&print_lock);
  reply = tipc_cfg_reply_alloc(TLV_SPACE(str_len));
  if (reply) {
   rep_tlv = (struct tlv_desc *)reply->data;
   tipc_printbuf_init(&pb, TLV_DATA(rep_tlv), str_len);
   spin_lock_bh(&print_lock);
   tipc_printbuf_move(&pb, TIPC_LOG);
   spin_unlock_bh(&print_lock);
   str_len = strlen(TLV_DATA(rep_tlv)) + 1;
   skb_put(reply, TLV_SPACE(str_len));
   TLV_SET(rep_tlv, TIPC_TLV_ULTRA_STRING, ((void*)0), str_len);
  }
 }
 return reply;
}
