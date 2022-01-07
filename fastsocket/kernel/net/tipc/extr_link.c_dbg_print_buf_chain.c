
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;


 scalar_t__ DBG_OUTPUT ;
 scalar_t__ TIPC_NULL ;
 int buf_msg (struct sk_buff*) ;
 int msg_dbg (int ,char*) ;

__attribute__((used)) static void dbg_print_buf_chain(struct sk_buff *root_buf)
{
 if (DBG_OUTPUT != TIPC_NULL) {
  struct sk_buff *buf = root_buf;

  while (buf) {
   msg_dbg(buf_msg(buf), "In chain: ");
   buf = buf->next;
  }
 }
}
