#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  QDSP_uPAudPPCmd2Queue ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,unsigned int) ; 
 TYPE_1__ the_audpp_state ; 

int FUNC1(void *cmd, unsigned len)
{
	return FUNC0(the_audpp_state.mod,
			      QDSP_uPAudPPCmd2Queue, cmd, len);
}