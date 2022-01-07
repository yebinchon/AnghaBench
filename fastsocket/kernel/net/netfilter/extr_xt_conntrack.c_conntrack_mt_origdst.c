
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
struct xt_conntrack_mtinfo2 {int origdst_mask; int origdst_addr; } ;
struct nf_conn {TYPE_3__* tuplehash; } ;
struct TYPE_4__ {int u3; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct TYPE_6__ {TYPE_2__ tuple; } ;


 size_t IP_CT_DIR_ORIGINAL ;
 int conntrack_addrcmp (int *,int *,int *,int ) ;

__attribute__((used)) static inline bool
conntrack_mt_origdst(const struct nf_conn *ct,
                     const struct xt_conntrack_mtinfo2 *info,
       u_int8_t family)
{
 return conntrack_addrcmp(&ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple.dst.u3,
        &info->origdst_addr, &info->origdst_mask, family);
}
