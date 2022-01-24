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
struct sctp_ulpq {int pd_mode; TYPE_2__* asoc; } ;
struct sctp_sock {int /*<<< orphan*/  pd_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk; } ;
struct TYPE_4__ {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sctp_sock* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sctp_ulpq *ulpq)
{
	struct sctp_sock *sp = FUNC1(ulpq->asoc->base.sk);

	FUNC0(&sp->pd_mode);
	ulpq->pd_mode = 1;
}