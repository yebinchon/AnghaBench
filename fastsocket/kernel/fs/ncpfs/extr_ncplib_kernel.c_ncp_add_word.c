
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {size_t current_size; int * packet; } ;
typedef int __le16 ;


 int assert_server_locked (struct ncp_server*) ;
 int put_unaligned (int ,int *) ;

__attribute__((used)) static void ncp_add_word(struct ncp_server *server, __le16 x)
{
 assert_server_locked(server);
 put_unaligned(x, (__le16 *) (&(server->packet[server->current_size])));
 server->current_size += 2;
 return;
}
