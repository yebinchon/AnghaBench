#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sctp_ulpq {scalar_t__ malloced; scalar_t__ pd_mode; int /*<<< orphan*/  lobby; int /*<<< orphan*/  reasm; struct sctp_association* asoc; } ;
struct sctp_association {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_ulpq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

struct sctp_ulpq *FUNC2(struct sctp_ulpq *ulpq,
				 struct sctp_association *asoc)
{
	FUNC0(ulpq, 0, sizeof(struct sctp_ulpq));

	ulpq->asoc = asoc;
	FUNC1(&ulpq->reasm);
	FUNC1(&ulpq->lobby);
	ulpq->pd_mode  = 0;
	ulpq->malloced = 0;

	return ulpq;
}