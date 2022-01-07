
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int dummy; } ;
struct sk_buff {int dummy; } ;
struct link {int dummy; } ;


 char* TIPC_CFG_TLV_ERROR ;
 int TIPC_TLV_LINK_NAME ;
 int TLV_CHECK (void const*,int,int ) ;
 scalar_t__ TLV_DATA (void const*) ;
 struct link* link_find_link (char*,struct tipc_node**) ;
 int link_reset_statistics (struct link*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int strcmp (char*,int ) ;
 int tipc_bclink_name ;
 scalar_t__ tipc_bclink_reset_stats () ;
 struct sk_buff* tipc_cfg_reply_error_string (char*) ;
 struct sk_buff* tipc_cfg_reply_none () ;
 int tipc_net_lock ;
 int tipc_node_lock (struct tipc_node*) ;
 int tipc_node_unlock (struct tipc_node*) ;

struct sk_buff *tipc_link_cmd_reset_stats(const void *req_tlv_area, int req_tlv_space)
{
 char *link_name;
 struct link *l_ptr;
 struct tipc_node *node;

 if (!TLV_CHECK(req_tlv_area, req_tlv_space, TIPC_TLV_LINK_NAME))
  return tipc_cfg_reply_error_string(TIPC_CFG_TLV_ERROR);

 link_name = (char *)TLV_DATA(req_tlv_area);
 if (!strcmp(link_name, tipc_bclink_name)) {
  if (tipc_bclink_reset_stats())
   return tipc_cfg_reply_error_string("link not found");
  return tipc_cfg_reply_none();
 }

 read_lock_bh(&tipc_net_lock);
 l_ptr = link_find_link(link_name, &node);
 if (!l_ptr) {
  read_unlock_bh(&tipc_net_lock);
  return tipc_cfg_reply_error_string("link not found");
 }

 tipc_node_lock(node);
 link_reset_statistics(l_ptr);
 tipc_node_unlock(node);
 read_unlock_bh(&tipc_net_lock);
 return tipc_cfg_reply_none();
}
