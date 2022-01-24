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
 int LLC_SAP_DYN_START ; 
 int LLC_SAP_DYN_STOP ; 
 int LLC_SAP_DYN_TRIES ; 
 struct llc_sap* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct llc_sap*) ; 
 int llc_ui_sap_last_autoport ; 

__attribute__((used)) static int FUNC2(void)
{
	struct llc_sap *sap;
	int i, tries = 0;

	while (tries < LLC_SAP_DYN_TRIES) {
		for (i = llc_ui_sap_last_autoport;
		     i < LLC_SAP_DYN_STOP; i += 2) {
			sap = FUNC0(i);
			if (!sap) {
				llc_ui_sap_last_autoport = i + 2;
				goto out;
			}
			FUNC1(sap);
		}
		llc_ui_sap_last_autoport = LLC_SAP_DYN_START;
		tries++;
	}
	i = 0;
out:
	return i;
}