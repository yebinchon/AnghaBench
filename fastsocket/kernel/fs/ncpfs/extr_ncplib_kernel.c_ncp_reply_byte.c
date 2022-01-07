
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ncp_server {int dummy; } ;


 scalar_t__ ncp_reply_data (struct ncp_server*,int) ;

__attribute__((used)) static u8 ncp_reply_byte(struct ncp_server *server, int offset)
{
 return *(u8 *)ncp_reply_data(server, offset);
}
