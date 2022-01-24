#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* sk; } ;
struct sctp_association {int state; int /*<<< orphan*/  pathmtu; TYPE_2__ base; scalar_t__ a_rwnd; scalar_t__ rwnd; } ;
struct TYPE_3__ {int sk_rcvbuf; } ;

/* Variables and functions */
#define  SCTP_STATE_ESTABLISHED 131 
#define  SCTP_STATE_SHUTDOWN_PENDING 130 
#define  SCTP_STATE_SHUTDOWN_RECEIVED 129 
#define  SCTP_STATE_SHUTDOWN_SENT 128 
 int /*<<< orphan*/  __u32 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int sctp_rwnd_upd_shift ; 

__attribute__((used)) static inline int FUNC1(struct sctp_association *asoc)
{
	switch (asoc->state) {
	case SCTP_STATE_ESTABLISHED:
	case SCTP_STATE_SHUTDOWN_PENDING:
	case SCTP_STATE_SHUTDOWN_RECEIVED:
	case SCTP_STATE_SHUTDOWN_SENT:
		if ((asoc->rwnd > asoc->a_rwnd) &&
		    ((asoc->rwnd - asoc->a_rwnd) >= FUNC0(__u32,
			   (asoc->base.sk->sk_rcvbuf >> sctp_rwnd_upd_shift),
			   asoc->pathmtu)))
			return 1;
		break;
	default:
		break;
	}
	return 0;
}