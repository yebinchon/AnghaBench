
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_reply_header {int conn_low; int conn_high; } ;



__attribute__((used)) static inline int get_conn_number(struct ncp_reply_header *rp)
{
 return rp->conn_low | (rp->conn_high << 8);
}
