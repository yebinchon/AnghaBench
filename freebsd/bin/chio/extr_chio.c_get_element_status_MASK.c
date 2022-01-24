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
typedef  void* uint16_t ;
struct changer_element_status_request {int cesr_element_count; struct changer_element_status* cesr_element_status; int /*<<< orphan*/  cesr_flags; void* cesr_element_base; void* cesr_element_type; } ;
struct changer_element_status {int dummy; } ;
typedef  int /*<<< orphan*/  cesr ;

/* Variables and functions */
 int /*<<< orphan*/  CESR_VOLTAGS ; 
 int /*<<< orphan*/  CHIOGSTATUS ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  changer_fd ; 
 int /*<<< orphan*/  changer_name ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct changer_element_status*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct changer_element_status_request*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct changer_element_status *
FUNC6(unsigned int type, unsigned int element, int use_voltags)
{
	struct changer_element_status_request cesr;
	struct changer_element_status *ces;
	
	ces = (struct changer_element_status *)
	    FUNC0((size_t)1, sizeof(struct changer_element_status));

	if (NULL == ces)
		FUNC2(1, "can't allocate status storage");

	(void)FUNC5(&cesr, 0, sizeof(cesr));

	cesr.cesr_element_type = (uint16_t)type;
	cesr.cesr_element_base = (uint16_t)element;
	cesr.cesr_element_count = 1;		/* Only this one element */
	if (use_voltags)
		cesr.cesr_flags |= CESR_VOLTAGS; /* Grab voltags as well */
	cesr.cesr_element_status = ces;

	if (FUNC4(changer_fd, CHIOGSTATUS, (char *)&cesr) == -1) {
		FUNC3(ces);
		FUNC1(1, "%s: CHIOGSTATUS", changer_name);
		/* NOTREACHED */
	}

	return ces;
}