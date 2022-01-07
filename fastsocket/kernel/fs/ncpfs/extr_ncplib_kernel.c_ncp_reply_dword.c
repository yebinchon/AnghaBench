
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int dummy; } ;
typedef int __le32 ;


 int get_unaligned (int *) ;
 scalar_t__ ncp_reply_data (struct ncp_server*,int) ;

__attribute__((used)) static __le32
ncp_reply_dword(struct ncp_server *server, int offset)
{
 return get_unaligned((__le32 *)ncp_reply_data(server, offset));
}
