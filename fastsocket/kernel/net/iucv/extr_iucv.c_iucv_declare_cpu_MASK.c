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
struct TYPE_2__ {int /*<<< orphan*/  ipbfadr1; } ;
union iucv_param {TYPE_1__ db; } ;

/* Variables and functions */
 int /*<<< orphan*/  IUCV_DECLARE_BUFFER ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iucv_buffer_cpumask ; 
 int FUNC5 (int /*<<< orphan*/ ,union iucv_param*) ; 
 int /*<<< orphan*/  iucv_irq_cpumask ; 
 int /*<<< orphan*/ * iucv_irq_data ; 
 scalar_t__ iucv_nonsmp_handler ; 
 union iucv_param** iucv_param_irq ; 
 int /*<<< orphan*/  FUNC6 (union iucv_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,char*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void *data)
{
	int cpu = FUNC8();
	union iucv_param *parm;
	int rc;

	if (FUNC0(cpu, iucv_buffer_cpumask))
		return;

	/* Declare interrupt buffer. */
	parm = iucv_param_irq[cpu];
	FUNC6(parm, 0, sizeof(union iucv_param));
	parm->db.ipbfadr1 = FUNC9(iucv_irq_data[cpu]);
	rc = FUNC5(IUCV_DECLARE_BUFFER, parm);
	if (rc) {
		char *err = "Unknown";
		switch (rc) {
		case 0x03:
			err = "Directory error";
			break;
		case 0x0a:
			err = "Invalid length";
			break;
		case 0x13:
			err = "Buffer already exists";
			break;
		case 0x3e:
			err = "Buffer overlap";
			break;
		case 0x5c:
			err = "Paging or storage error";
			break;
		}
		FUNC7("Defining an interrupt buffer on CPU %i"
			   " failed with 0x%02x (%s)\n", cpu, rc, err);
		return;
	}

	/* Set indication that an iucv buffer exists for this cpu. */
	FUNC1(cpu, iucv_buffer_cpumask);

	if (iucv_nonsmp_handler == 0 || FUNC2(iucv_irq_cpumask))
		/* Enable iucv interrupts on this cpu. */
		FUNC3(NULL);
	else
		/* Disable iucv interrupts on this cpu. */
		FUNC4(NULL);
}