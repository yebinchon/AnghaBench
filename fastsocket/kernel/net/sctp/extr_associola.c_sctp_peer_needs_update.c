
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sk; } ;
struct sctp_association {int state; int pathmtu; TYPE_2__ base; scalar_t__ a_rwnd; scalar_t__ rwnd; } ;
struct TYPE_3__ {int sk_rcvbuf; } ;






 int __u32 ;
 scalar_t__ max_t (int ,int,int ) ;
 int sctp_rwnd_upd_shift ;

__attribute__((used)) static inline int sctp_peer_needs_update(struct sctp_association *asoc)
{
 switch (asoc->state) {
 case 131:
 case 130:
 case 129:
 case 128:
  if ((asoc->rwnd > asoc->a_rwnd) &&
      ((asoc->rwnd - asoc->a_rwnd) >= max_t(__u32,
      (asoc->base.sk->sk_rcvbuf >> sctp_rwnd_upd_shift),
      asoc->pathmtu)))
   return 1;
  break;
 default:
  break;
 }
 return 0;
}
