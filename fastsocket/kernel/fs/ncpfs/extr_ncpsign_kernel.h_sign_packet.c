
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {scalar_t__ sign_active; } ;
typedef int __u32 ;


 int __sign_packet (struct ncp_server*,char const*,size_t,int ,void*) ;

__attribute__((used)) static inline size_t sign_packet(struct ncp_server *server, const char *data, size_t size, __u32 totalsize, void *sign_buff) {






 return 0;
}
