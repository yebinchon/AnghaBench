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
struct dccp_ackvec_record {int /*<<< orphan*/  avr_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dccp_ackvec_record_slab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dccp_ackvec_record*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dccp_ackvec_record *avr)
{
	if (FUNC3(avr == NULL))
		return;
	/* Check if deleting a linked record */
	FUNC0(!FUNC2(&avr->avr_node));
	FUNC1(dccp_ackvec_record_slab, avr);
}