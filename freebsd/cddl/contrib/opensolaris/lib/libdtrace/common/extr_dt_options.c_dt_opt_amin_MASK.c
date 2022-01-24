#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  str ;
struct TYPE_6__ {void* dt_amin; int /*<<< orphan*/  dt_cflags; TYPE_1__* dt_pcb; } ;
typedef  TYPE_2__ dtrace_hdl_t ;
typedef  void* dtrace_attribute_t ;
struct TYPE_5__ {void* pcb_amin; int /*<<< orphan*/  pcb_cflags; } ;

/* Variables and functions */
 int DTRACE_ATTR2STR_MAX ; 
 int /*<<< orphan*/  DTRACE_C_EATTR ; 
 int /*<<< orphan*/  EDT_BADOPTVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int) ; 
 int FUNC3 (char const*,void**) ; 

__attribute__((used)) static int
FUNC4(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
	char str[DTRACE_ATTR2STR_MAX];
	dtrace_attribute_t attr;

	if (arg == NULL || FUNC3(arg, &attr) == -1)
		return (FUNC1(dtp, EDT_BADOPTVAL));

	FUNC0("set compiler attribute minimum to %s\n",
	    FUNC2(attr, str, sizeof (str)));

	if (dtp->dt_pcb != NULL) {
		dtp->dt_pcb->pcb_cflags |= DTRACE_C_EATTR;
		dtp->dt_pcb->pcb_amin = attr;
	} else {
		dtp->dt_cflags |= DTRACE_C_EATTR;
		dtp->dt_amin = attr;
	}

	return (0);
}