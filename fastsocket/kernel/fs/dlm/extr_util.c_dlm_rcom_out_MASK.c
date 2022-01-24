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
struct dlm_rcom {void* rc_seq_reply; void* rc_seq; void* rc_id; void* rc_result; void* rc_type; int /*<<< orphan*/  rc_header; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dlm_rcom *rc)
{
	FUNC2(&rc->rc_header);

	rc->rc_type		= FUNC0(rc->rc_type);
	rc->rc_result		= FUNC0(rc->rc_result);
	rc->rc_id		= FUNC1(rc->rc_id);
	rc->rc_seq		= FUNC1(rc->rc_seq);
	rc->rc_seq_reply	= FUNC1(rc->rc_seq_reply);
}