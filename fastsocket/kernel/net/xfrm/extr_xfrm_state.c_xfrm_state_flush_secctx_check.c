
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xfrm_audit {int dummy; } ;
struct net {int dummy; } ;



__attribute__((used)) static inline int
xfrm_state_flush_secctx_check(struct net *net, u8 proto, struct xfrm_audit *audit_info)
{
 return 0;
}
