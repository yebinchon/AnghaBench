
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct media {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct bearer {TYPE_1__ publ; struct media* media; scalar_t__ active; } ;


 int MAX_BEARERS ;
 int TIPC_MAX_BEARER_NAME ;
 int TIPC_TLV_BEARER_NAME ;
 int TLV_SPACE (int ) ;
 int media_count ;
 struct media* media_list ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 scalar_t__ strlen (int ) ;
 struct bearer* tipc_bearers ;
 int tipc_cfg_append_tlv (struct sk_buff*,int ,int ,scalar_t__) ;
 struct sk_buff* tipc_cfg_reply_alloc (int) ;
 int tipc_net_lock ;

struct sk_buff *tipc_bearer_get_names(void)
{
 struct sk_buff *buf;
 struct media *m_ptr;
 struct bearer *b_ptr;
 int i, j;

 buf = tipc_cfg_reply_alloc(MAX_BEARERS * TLV_SPACE(TIPC_MAX_BEARER_NAME));
 if (!buf)
  return ((void*)0);

 read_lock_bh(&tipc_net_lock);
 for (i = 0, m_ptr = media_list; i < media_count; i++, m_ptr++) {
  for (j = 0; j < MAX_BEARERS; j++) {
   b_ptr = &tipc_bearers[j];
   if (b_ptr->active && (b_ptr->media == m_ptr)) {
    tipc_cfg_append_tlv(buf, TIPC_TLV_BEARER_NAME,
          b_ptr->publ.name,
          strlen(b_ptr->publ.name) + 1);
   }
  }
 }
 read_unlock_bh(&tipc_net_lock);
 return buf;
}
