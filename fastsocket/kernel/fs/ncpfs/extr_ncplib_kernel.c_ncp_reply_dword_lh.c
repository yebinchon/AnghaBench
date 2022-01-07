
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int dummy; } ;
typedef int __u32 ;


 int le32_to_cpu (int ) ;
 int ncp_reply_dword (struct ncp_server*,int) ;

__attribute__((used)) static inline __u32 ncp_reply_dword_lh(struct ncp_server* server, int offset) {
 return le32_to_cpu(ncp_reply_dword(server, offset));
}
