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
struct llc_sap {int dummy; } ;

/* Variables and functions */
 struct llc_sap* FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct llc_sap*) ; 
 int /*<<< orphan*/  llc_sap_list_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct llc_sap *FUNC4(unsigned char sap_value)
{
	struct llc_sap* sap;

	FUNC2(&llc_sap_list_lock);
	sap = FUNC0(sap_value);
	if (sap)
		FUNC1(sap);
	FUNC3(&llc_sap_list_lock);
	return sap;
}