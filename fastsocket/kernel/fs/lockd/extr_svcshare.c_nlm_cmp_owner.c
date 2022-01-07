
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_netobj {scalar_t__ len; int data; } ;
struct TYPE_2__ {scalar_t__ len; int data; } ;
struct nlm_share {TYPE_1__ s_owner; } ;


 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static inline int
nlm_cmp_owner(struct nlm_share *share, struct xdr_netobj *oh)
{
 return share->s_owner.len == oh->len
     && !memcmp(share->s_owner.data, oh->data, oh->len);
}
