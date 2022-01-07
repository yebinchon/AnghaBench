
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ncp_server {int dummy; } ;


 int get_unaligned_le16 (int ) ;
 int ncp_reply_data (struct ncp_server*,int) ;

__attribute__((used)) static u16
ncp_reply_le16(struct ncp_server *server, int offset)
{
 return get_unaligned_le16(ncp_reply_data(server, offset));
}
