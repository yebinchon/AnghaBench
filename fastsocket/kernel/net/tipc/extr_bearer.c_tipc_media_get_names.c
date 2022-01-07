
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct media {int name; } ;


 int MAX_MEDIA ;
 int TIPC_MAX_MEDIA_NAME ;
 int TIPC_TLV_MEDIA_NAME ;
 int TLV_SPACE (int ) ;
 int media_count ;
 struct media* media_list ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 scalar_t__ strlen (int ) ;
 int tipc_cfg_append_tlv (struct sk_buff*,int ,int ,scalar_t__) ;
 struct sk_buff* tipc_cfg_reply_alloc (int) ;
 int tipc_net_lock ;

struct sk_buff *tipc_media_get_names(void)
{
 struct sk_buff *buf;
 struct media *m_ptr;
 int i;

 buf = tipc_cfg_reply_alloc(MAX_MEDIA * TLV_SPACE(TIPC_MAX_MEDIA_NAME));
 if (!buf)
  return ((void*)0);

 read_lock_bh(&tipc_net_lock);
 for (i = 0, m_ptr = media_list; i < media_count; i++, m_ptr++) {
  tipc_cfg_append_tlv(buf, TIPC_TLV_MEDIA_NAME, m_ptr->name,
        strlen(m_ptr->name) + 1);
 }
 read_unlock_bh(&tipc_net_lock);
 return buf;
}
