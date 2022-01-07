
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {size_t current_size; int * packet; } ;
typedef int __u16 ;
typedef int __be16 ;


 int assert_server_locked (struct ncp_server*) ;
 int cpu_to_be16 (int ) ;
 int put_unaligned (int ,int *) ;

__attribute__((used)) static void ncp_add_be16(struct ncp_server *server, __u16 x)
{
 assert_server_locked(server);
 put_unaligned(cpu_to_be16(x), (__be16 *) (&(server->packet[server->current_size])));
 server->current_size += 2;
}
