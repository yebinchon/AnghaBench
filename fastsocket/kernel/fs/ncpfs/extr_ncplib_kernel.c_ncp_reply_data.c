
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {char* packet; } ;
struct ncp_reply_header {int dummy; } ;



__attribute__((used)) static inline char *
ncp_reply_data(struct ncp_server *server, int offset)
{
 return &(server->packet[sizeof(struct ncp_reply_header) + offset]);
}
