
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct publication {int local_list; } ;
struct distr_item {int dummy; } ;


 int ITEM_SIZE ;
 int WITHDRAWAL ;
 int buf_msg (struct sk_buff*) ;
 int dbg (char*) ;
 int list_del (int *) ;
 scalar_t__ msg_data (int ) ;
 struct sk_buff* named_prepare_buf (int ,int ,int ) ;
 int publ_cnt ;
 int publ_to_item (struct distr_item*,struct publication*) ;
 int tipc_cltr_broadcast (struct sk_buff*) ;
 int warn (char*) ;

void tipc_named_withdraw(struct publication *publ)
{
 struct sk_buff *buf;
 struct distr_item *item;

 list_del(&publ->local_list);
 publ_cnt--;

 buf = named_prepare_buf(WITHDRAWAL, ITEM_SIZE, 0);
 if (!buf) {
  warn("Withdrawl distribution failure\n");
  return;
 }

 item = (struct distr_item *)msg_data(buf_msg(buf));
 publ_to_item(item, publ);
 dbg("tipc_named_withdraw: broadcasting withdraw msg\n");
 tipc_cltr_broadcast(buf);
}
