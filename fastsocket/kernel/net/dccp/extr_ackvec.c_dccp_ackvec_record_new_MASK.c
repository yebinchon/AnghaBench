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
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dccp_ackvec_record_slab ; 
 struct dccp_ackvec_record* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dccp_ackvec_record *FUNC2(void)
{
	struct dccp_ackvec_record *avr =
			FUNC1(dccp_ackvec_record_slab, GFP_ATOMIC);

	if (avr != NULL)
		FUNC0(&avr->avr_node);

	return avr;
}