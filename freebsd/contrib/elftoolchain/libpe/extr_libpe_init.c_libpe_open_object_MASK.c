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
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_5__ {size_t pe_fsize; scalar_t__ pe_cmd; int /*<<< orphan*/  pe_fd; void* pe_obj; } ;
typedef  int /*<<< orphan*/  PE_DosHdr ;
typedef  int /*<<< orphan*/  PE_CoffHdr ;
typedef  TYPE_1__ PE ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOENT ; 
 scalar_t__ PE_C_RDWR ; 
 void* PE_O_COFF ; 
 void* PE_O_PE32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC5 (TYPE_1__*,char*) ; 
 int FUNC6 (TYPE_1__*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC8(PE *pe)
{
	struct stat sb;
	mode_t mode;
	char magic[sizeof(PE_DosHdr)];

	if (FUNC4(pe->pe_fd, &sb) < 0)
		return (-1);

	mode = sb.st_mode;
	pe->pe_fsize = (size_t) sb.st_size;

	/* Reject unsupported file types. */
	if (!FUNC2(mode) && !FUNC0(mode) && !FUNC1(mode) &&
	    !FUNC3(mode)) {
		errno = EINVAL;
		return (-1);
	}

	/* Read/Write mode is not supported for non-regular file. */
	if (pe->pe_cmd == PE_C_RDWR && !FUNC2(mode)) {
		errno = EINVAL;
		return (-1);
	}

	/* The minimal file should at least contain a COFF header. */
	if (FUNC2(mode) && pe->pe_fsize < sizeof(PE_CoffHdr)) {
		errno = ENOENT;
		return (-1);
	}

	/*
	 * Search for MS-DOS header or COFF header.
	 */

	if (FUNC7(pe->pe_fd, magic, 2) != 2) {
		errno = EIO;
		return (-1);
	}

	if (magic[0] == 'M' && magic[1] == 'Z') {
		pe->pe_obj = PE_O_PE32;
		if (FUNC7(pe->pe_fd, &magic[2], sizeof(PE_DosHdr) - 2) !=
		    (ssize_t) sizeof(PE_DosHdr) - 2) {
			errno = EIO;
			return (-1);
		}
		return (FUNC6(pe, magic));

	} else if (magic[0] == 'P' && magic[1] == 'E') {
		if (FUNC7(pe->pe_fd, magic, 2) != 2) {
			errno = EIO;
			return (-1);
		}
		if (magic[0] == '\0' && magic[1] == '\0') {
			pe->pe_obj = PE_O_PE32;
			if (FUNC7(pe->pe_fd, magic, sizeof(PE_CoffHdr)) !=
			    (ssize_t) sizeof(PE_CoffHdr)) {
				errno = EIO;
				return (-1);
			}
			return (FUNC5(pe, magic));
		}
		errno = ENOENT;
		return (-1);

	} else {
		pe->pe_obj = PE_O_COFF;
		if (FUNC7(pe->pe_fd, &magic[2], sizeof(PE_CoffHdr) - 2) !=
		    (ssize_t) sizeof(PE_CoffHdr) - 2) {
			errno = EIO;
			return (-1);
		}
		return (FUNC5(pe, magic));
	}
}