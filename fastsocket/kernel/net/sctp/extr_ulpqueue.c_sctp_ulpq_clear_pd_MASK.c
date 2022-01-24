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
struct sctp_ulpq {TYPE_2__* asoc; scalar_t__ pd_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk; } ;
struct TYPE_4__ {TYPE_1__ base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_ulpq*) ; 

__attribute__((used)) static int FUNC2(struct sctp_ulpq *ulpq)
{
	ulpq->pd_mode = 0;
	FUNC1(ulpq);
	return FUNC0(ulpq->asoc->base.sk, ulpq->asoc);
}