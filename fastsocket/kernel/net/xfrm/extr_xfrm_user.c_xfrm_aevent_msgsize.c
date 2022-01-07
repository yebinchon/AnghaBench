
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_replay_state {int dummy; } ;
struct xfrm_mark {int dummy; } ;
struct xfrm_lifetime_cur {int dummy; } ;
struct xfrm_aevent_id {int dummy; } ;


 size_t NLMSG_ALIGN (int) ;
 size_t nla_total_size (int) ;

__attribute__((used)) static inline size_t xfrm_aevent_msgsize(void)
{
 return NLMSG_ALIGN(sizeof(struct xfrm_aevent_id))
        + nla_total_size(sizeof(struct xfrm_replay_state))
        + nla_total_size(sizeof(struct xfrm_lifetime_cur))
        + nla_total_size(sizeof(struct xfrm_mark))
        + nla_total_size(4)
        + nla_total_size(4);
}
