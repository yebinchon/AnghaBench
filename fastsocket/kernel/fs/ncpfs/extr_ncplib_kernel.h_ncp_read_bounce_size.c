
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_reply_header {int dummy; } ;
typedef int __u32 ;



__attribute__((used)) static inline int ncp_read_bounce_size(__u32 size) {
 return sizeof(struct ncp_reply_header) + 2 + 2 + size + 8;
}
