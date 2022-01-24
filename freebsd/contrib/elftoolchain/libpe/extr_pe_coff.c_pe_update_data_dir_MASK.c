#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ pe_cmd; int pe_flags; int /*<<< orphan*/ * pe_dd; } ;
typedef  int /*<<< orphan*/  PE_DataDir ;
typedef  TYPE_1__ PE ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int LIBPE_F_DIRTY_OPT_HEADER ; 
 int LIBPE_F_FD_DONE ; 
 scalar_t__ PE_C_READ ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 

int
FUNC1(PE *pe, PE_DataDir *dd)
{

	if (pe == NULL || dd == NULL) {
		errno = EINVAL;
		return (-1);
	}

	if (pe->pe_cmd == PE_C_READ || pe->pe_flags & LIBPE_F_FD_DONE) {
		errno = EACCES;
		return (-1);
	}

	if (pe->pe_dd == NULL) {
		if ((pe->pe_dd = FUNC0(sizeof(PE_DataDir))) == NULL) {
			errno = ENOMEM;
			return (-1);
		}
	}

	*pe->pe_dd = *dd;

	pe->pe_flags |= LIBPE_F_DIRTY_OPT_HEADER;

	return (0);
}