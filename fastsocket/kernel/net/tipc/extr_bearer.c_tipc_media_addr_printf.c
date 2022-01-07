
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ unchar ;
typedef scalar_t__ u32 ;
struct tipc_media_addr {int dev_addr; int type; } ;
struct print_buf {int dummy; } ;
struct media {scalar_t__ type_id; int (* addr2str ) (struct tipc_media_addr*,char*,int) ;int name; } ;
typedef int addr_str ;


 int MAX_ADDR_STR ;
 scalar_t__ media_count ;
 struct media* media_list ;
 scalar_t__ ntohl (int ) ;
 int stub1 (struct tipc_media_addr*,char*,int) ;
 int tipc_printf (struct print_buf*,char*,scalar_t__,...) ;

void tipc_media_addr_printf(struct print_buf *pb, struct tipc_media_addr *a)
{
 struct media *m_ptr;
 u32 media_type;
 u32 i;

 media_type = ntohl(a->type);
 for (i = 0, m_ptr = media_list; i < media_count; i++, m_ptr++) {
  if (m_ptr->type_id == media_type)
   break;
 }

 if ((i < media_count) && (m_ptr->addr2str != ((void*)0))) {
  char addr_str[MAX_ADDR_STR];

  tipc_printf(pb, "%s(%s)", m_ptr->name,
       m_ptr->addr2str(a, addr_str, sizeof(addr_str)));
 } else {
  unchar *addr = (unchar *)&a->dev_addr;

  tipc_printf(pb, "UNKNOWN(%u)", media_type);
  for (i = 0; i < (sizeof(*a) - sizeof(a->type)); i++) {
   tipc_printf(pb, "-%02x", addr[i]);
  }
 }
}
