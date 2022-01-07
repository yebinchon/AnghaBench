
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {size_t current_size; int * packet; } ;
typedef int __u8 ;


 int assert_server_locked (struct ncp_server*) ;

__attribute__((used)) static void ncp_add_byte(struct ncp_server *server, __u8 x)
{
 assert_server_locked(server);
 *(__u8 *) (&(server->packet[server->current_size])) = x;
 server->current_size += 1;
 return;
}
