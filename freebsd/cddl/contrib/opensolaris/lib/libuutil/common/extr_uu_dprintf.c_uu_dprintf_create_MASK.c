#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  uud_flags; int /*<<< orphan*/  uud_severity; int /*<<< orphan*/ * uud_name; } ;
typedef  TYPE_1__ uu_dprintf_t ;
typedef  int /*<<< orphan*/  uu_dprintf_severity_t ;
typedef  int /*<<< orphan*/  uint_t ;

/* Variables and functions */
 int /*<<< orphan*/  UU_ERROR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  UU_NAME_DOMAIN ; 
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int) ; 

uu_dprintf_t *
FUNC5(const char *name, uu_dprintf_severity_t severity,
    uint_t flags)
{
	uu_dprintf_t *D;

	if (FUNC1(name, UU_NAME_DOMAIN) == -1) {
		FUNC3(UU_ERROR_INVALID_ARGUMENT);
		return (NULL);
	}

	if ((D = FUNC4(sizeof (uu_dprintf_t))) == NULL)
		return (NULL);

	if (name != NULL) {
		D->uud_name = FUNC0(name);
		if (D->uud_name == NULL) {
			FUNC2(D);
			return (NULL);
		}
	} else {
		D->uud_name = NULL;
	}

	D->uud_severity = severity;
	D->uud_flags = flags;

	return (D);
}