
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {struct sk_buff* next; } ;
struct link {struct sk_buff* defragm_buf; } ;


 int buf_discard (struct sk_buff*) ;
 int buf_msg (struct sk_buff*) ;
 int dbg (char*) ;
 int dbg_print_buf_chain (struct sk_buff*) ;
 int dbg_print_link (struct link*,char*) ;
 int get_timer_cnt (struct sk_buff*) ;
 int incr_timer_cnt (struct sk_buff*) ;
 int link_working_working (struct link*) ;
 int msg_dbg (int ,char*) ;

__attribute__((used)) static void link_check_defragm_bufs(struct link *l_ptr)
{
 struct sk_buff *prev = ((void*)0);
 struct sk_buff *next = ((void*)0);
 struct sk_buff *buf = l_ptr->defragm_buf;

 if (!buf)
  return;
 if (!link_working_working(l_ptr))
  return;
 while (buf) {
  u32 cnt = get_timer_cnt(buf);

  next = buf->next;
  if (cnt < 4) {
   incr_timer_cnt(buf);
   prev = buf;
  } else {
   dbg(" Discarding incomplete long buffer\n");
   msg_dbg(buf_msg(buf), "LONG:");
   dbg_print_link(l_ptr, "curr:");
   dbg("Pending long buffers:\n");
   dbg_print_buf_chain(l_ptr->defragm_buf);
   if (prev)
    prev->next = buf->next;
   else
    l_ptr->defragm_buf = buf->next;
   buf_discard(buf);
  }
  buf = next;
 }
}
