#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int pe_flags; } ;
struct TYPE_7__ {int ps_flags; int /*<<< orphan*/  ps_b; TYPE_2__* ps_pe; } ;
typedef  int /*<<< orphan*/  PE_SecBuf ;
typedef  TYPE_1__ PE_Scn ;
typedef  int /*<<< orphan*/  PE_Buffer ;
typedef  TYPE_2__ PE ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EINVAL ; 
 int LIBPE_F_FD_DONE ; 
 int LIBPE_F_LOAD_SECTION ; 
 int LIBPE_F_SPECIAL_FILE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  sb_next ; 

PE_Buffer *
FUNC4(PE_Scn *ps, PE_Buffer *pb)
{
	PE *pe;
	PE_SecBuf *sb;

	if (ps == NULL) {
		errno = EINVAL;
		return (NULL);
	}

	pe = ps->ps_pe;

	if ((ps->ps_flags & LIBPE_F_LOAD_SECTION) == 0) {
		if (pe->pe_flags & LIBPE_F_FD_DONE) {
			errno = EACCES;
			return (NULL);
		}
		if (pe->pe_flags & LIBPE_F_SPECIAL_FILE) {
			if (FUNC2(pe) < 0)
				return (NULL);
		} else {
			if (FUNC3(pe, ps) < 0)
				return (NULL);
		}
	}

	sb = (PE_SecBuf *) pb;

	if (sb == NULL)
		sb = FUNC0(&ps->ps_b);
	else
		sb = FUNC1(sb, sb_next);

	return ((PE_Buffer *) sb);
}