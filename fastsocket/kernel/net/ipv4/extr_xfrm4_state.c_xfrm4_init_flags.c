
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct xfrm_state {TYPE_1__ props; } ;
struct TYPE_4__ {scalar_t__ no_pmtu_disc; } ;


 int XFRM_STATE_NOPMTUDISC ;
 TYPE_2__ ipv4_config ;

__attribute__((used)) static int xfrm4_init_flags(struct xfrm_state *x)
{
 if (ipv4_config.no_pmtu_disc)
  x->props.flags |= XFRM_STATE_NOPMTUDISC;
 return 0;
}
