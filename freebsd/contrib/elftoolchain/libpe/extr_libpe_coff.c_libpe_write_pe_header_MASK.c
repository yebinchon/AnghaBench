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
typedef  int /*<<< orphan*/  tmp ;
typedef  scalar_t__ ssize_t ;
typedef  int off_t ;
struct TYPE_6__ {scalar_t__ pe_cmd; int pe_flags; int /*<<< orphan*/  pe_fd; TYPE_1__* pe_dh; } ;
struct TYPE_5__ {scalar_t__ dh_lfanew; } ;
typedef  TYPE_2__ PE ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int LIBPE_F_BAD_PE_HEADER ; 
 int LIBPE_F_DIRTY_COFF_HEADER ; 
 int LIBPE_F_DIRTY_OPT_HEADER ; 
 scalar_t__ PE_C_RDWR ; 
 int /*<<< orphan*/  PE_SIGNATURE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

off_t
FUNC5(PE *pe, off_t off)
{
	char tmp[4];

	if (pe->pe_cmd == PE_C_RDWR &&
	    (pe->pe_flags & LIBPE_F_BAD_PE_HEADER) == 0) {
		FUNC0(pe->pe_dh != NULL);
		off = FUNC3(pe->pe_fd, (off_t) pe->pe_dh->dh_lfanew + 4,
		    SEEK_SET);
		return (off);
	}

	/*
	 * PE Header should to be aligned on 8-byte boundary according to
	 * the PE/COFF specification.
	 */
	if ((off = FUNC2(pe, off, 8)) < 0)
		return (-1);

	FUNC1(tmp, PE_SIGNATURE);
	if (FUNC4(pe->pe_fd, tmp, sizeof(tmp)) != (ssize_t) sizeof(tmp)) {
		errno = EIO;
		return (-1);
	}

	off += 4;

	pe->pe_flags &= ~LIBPE_F_BAD_PE_HEADER;

	/* Trigger rewrite for the following headers. */
	pe->pe_flags |= LIBPE_F_DIRTY_COFF_HEADER;
	pe->pe_flags |= LIBPE_F_DIRTY_OPT_HEADER;

	return (off);
}