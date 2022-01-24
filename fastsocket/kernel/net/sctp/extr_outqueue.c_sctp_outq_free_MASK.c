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
struct sctp_outq {scalar_t__ malloced; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_outq*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_outq*) ; 

void FUNC2(struct sctp_outq *q)
{
	/* Throw away leftover chunks. */
	FUNC0(q);

	/* If we were kmalloc()'d, free the memory.  */
	if (q->malloced)
		FUNC1(q);
}