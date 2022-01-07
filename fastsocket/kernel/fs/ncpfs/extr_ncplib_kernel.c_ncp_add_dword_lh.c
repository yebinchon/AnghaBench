
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int dummy; } ;
typedef int __u32 ;


 int cpu_to_le32 (int ) ;
 int ncp_add_dword (struct ncp_server*,int ) ;

__attribute__((used)) static inline void ncp_add_dword_lh(struct ncp_server *server, __u32 x) {
 ncp_add_dword(server, cpu_to_le32(x));
}
