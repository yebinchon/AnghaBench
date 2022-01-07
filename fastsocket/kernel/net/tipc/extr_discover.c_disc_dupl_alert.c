
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tipc_media_addr {int dummy; } ;
struct print_buf {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct bearer {TYPE_1__ publ; } ;
typedef int media_addr_str ;


 int addr_string_fill (char*,int ) ;
 int tipc_media_addr_printf (struct print_buf*,struct tipc_media_addr*) ;
 int tipc_printbuf_init (struct print_buf*,char*,int) ;
 int tipc_printbuf_validate (struct print_buf*) ;
 int warn (char*,char*,char*,int ) ;

__attribute__((used)) static void disc_dupl_alert(struct bearer *b_ptr, u32 node_addr,
       struct tipc_media_addr *media_addr)
{
 char node_addr_str[16];
 char media_addr_str[64];
 struct print_buf pb;

 addr_string_fill(node_addr_str, node_addr);
 tipc_printbuf_init(&pb, media_addr_str, sizeof(media_addr_str));
 tipc_media_addr_printf(&pb, media_addr);
 tipc_printbuf_validate(&pb);
 warn("Duplicate %s using %s seen on <%s>\n",
      node_addr_str, media_addr_str, b_ptr->publ.name);
}
