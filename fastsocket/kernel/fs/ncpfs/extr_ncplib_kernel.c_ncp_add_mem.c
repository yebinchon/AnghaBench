
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {size_t current_size; int * packet; } ;


 int assert_server_locked (struct ncp_server*) ;
 int memcpy (int *,void const*,int) ;

__attribute__((used)) static void ncp_add_mem(struct ncp_server *server, const void *source, int size)
{
 assert_server_locked(server);
 memcpy(&(server->packet[server->current_size]), source, size);
 server->current_size += size;
 return;
}
