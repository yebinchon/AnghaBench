#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fmt ;
struct TYPE_6__ {int dtrd_format; int dtrd_action; } ;
typedef  TYPE_1__ dtrace_recdesc_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_7__ {int dtfd_format; void** dtfd_string; scalar_t__ dtfd_length; } ;
typedef  TYPE_2__ dtrace_fmtdesc_t ;

/* Variables and functions */
#define  DTRACEACT_DIFEXPR 129 
#define  DTRACEACT_PRINTA 128 
 int /*<<< orphan*/  DTRACEIOC_FORMAT ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (void**,void**,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 void** FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void**) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void** FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 void* FUNC7 (int /*<<< orphan*/ *,void**) ; 
 void* FUNC8 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 (void**) ; 

__attribute__((used)) static int
FUNC10(dtrace_hdl_t *dtp, dtrace_recdesc_t *rec, void ***data, int *max)
{
	int maxformat, rval;
	dtrace_fmtdesc_t fmt;
	void *result;

	if (rec->dtrd_format == 0)
		return (0);

	if (rec->dtrd_format <= *max &&
	    (*data)[rec->dtrd_format - 1] != NULL) {
		return (0);
	}

	FUNC1(&fmt, sizeof (fmt));
	fmt.dtfd_format = rec->dtrd_format;
	fmt.dtfd_string = NULL;
	fmt.dtfd_length = 0;

	if (FUNC4(dtp, DTRACEIOC_FORMAT, &fmt) == -1)
		return (FUNC5(dtp, errno));

	if ((fmt.dtfd_string = FUNC2(dtp, fmt.dtfd_length)) == NULL)
		return (FUNC5(dtp, EDT_NOMEM));

	if (FUNC4(dtp, DTRACEIOC_FORMAT, &fmt) == -1) {
		rval = FUNC5(dtp, errno);
		FUNC9(fmt.dtfd_string);
		return (rval);
	}

	while (rec->dtrd_format > (maxformat = *max)) {
		int new_max = maxformat ? (maxformat << 1) : 1;
		size_t nsize = new_max * sizeof (void *);
		size_t osize = maxformat * sizeof (void *);
		void **new_data = FUNC6(dtp, nsize);

		if (new_data == NULL) {
			FUNC3(dtp, fmt.dtfd_string);
			return (FUNC5(dtp, EDT_NOMEM));
		}

		FUNC0(*data, new_data, osize);
		FUNC9(*data);

		*data = new_data;
		*max = new_max;
	}

	switch (rec->dtrd_action) {
	case DTRACEACT_DIFEXPR:
		result = fmt.dtfd_string;
		break;
	case DTRACEACT_PRINTA:
		result = FUNC7(dtp, fmt.dtfd_string);
		FUNC3(dtp, fmt.dtfd_string);
		break;
	default:
		result = FUNC8(dtp, fmt.dtfd_string);
		FUNC3(dtp, fmt.dtfd_string);
		break;
	}

	if (result == NULL)
		return (-1);

	(*data)[rec->dtrd_format - 1] = result;

	return (0);
}