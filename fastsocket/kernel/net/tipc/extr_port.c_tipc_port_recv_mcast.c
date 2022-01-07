
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct port_list {int count; int * ports; struct port_list* next; int * member_1; int member_0; } ;


 int GFP_ATOMIC ;
 int PLSIZE ;
 int TIPC_CLUSTER_SCOPE ;
 int buf_discard (struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int msg_dbg (struct tipc_msg*,char*) ;
 int msg_namelower (struct tipc_msg*) ;
 int msg_nametype (struct tipc_msg*) ;
 int msg_nameupper (struct tipc_msg*) ;
 int msg_set_destport (struct tipc_msg*,int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int tipc_nametbl_mc_translate (int ,int ,int ,int ,struct port_list*) ;
 int tipc_port_list_free (struct port_list*) ;
 int tipc_port_recv_msg (struct sk_buff*) ;
 int warn (char*) ;

void tipc_port_recv_mcast(struct sk_buff *buf, struct port_list *dp)
{
 struct tipc_msg* msg;
 struct port_list dports = {0, ((void*)0), };
 struct port_list *item = dp;
 int cnt = 0;

 msg = buf_msg(buf);



 if (dp == ((void*)0)) {
  tipc_nametbl_mc_translate(msg_nametype(msg),
         msg_namelower(msg),
         msg_nameupper(msg),
         TIPC_CLUSTER_SCOPE,
         &dports);
  item = dp = &dports;
 }



 if (dp->count != 0) {
  if (dp->count == 1) {
   msg_set_destport(msg, dp->ports[0]);
   tipc_port_recv_msg(buf);
   tipc_port_list_free(dp);
   return;
  }
  for (; cnt < dp->count; cnt++) {
   int index = cnt % PLSIZE;
   struct sk_buff *b = skb_clone(buf, GFP_ATOMIC);

   if (b == ((void*)0)) {
    warn("Unable to deliver multicast message(s)\n");
    msg_dbg(msg, "LOST:");
    goto exit;
   }
   if ((index == 0) && (cnt != 0)) {
    item = item->next;
   }
   msg_set_destport(buf_msg(b),item->ports[index]);
   tipc_port_recv_msg(b);
  }
 }
exit:
 buf_discard(buf);
 tipc_port_list_free(dp);
}
