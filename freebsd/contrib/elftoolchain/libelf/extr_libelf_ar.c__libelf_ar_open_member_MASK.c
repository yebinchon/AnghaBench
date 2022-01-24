#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ar_hdr {char* ar_size; char* ar_name; } ;
typedef  int off_t ;
struct TYPE_9__ {int e_next; int /*<<< orphan*/  e_nchildren; } ;
struct TYPE_10__ {TYPE_2__ e_ar; } ;
struct TYPE_8__ {unsigned char* e_rawhdr; } ;
struct TYPE_11__ {scalar_t__ e_kind; int e_fd; struct TYPE_11__* e_parent; TYPE_3__ e_u; TYPE_1__ e_hdr; int /*<<< orphan*/  e_cmd; scalar_t__ e_rawfile; } ;
typedef  int /*<<< orphan*/  Elf_Cmd ;
typedef  TYPE_4__ Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE ; 
 scalar_t__ ELF_K_AR ; 
 scalar_t__ FUNC0 (char*) ; 
 int LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int,int,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_4__* FUNC4 (char*,size_t) ; 

Elf *
FUNC5(int fd, Elf_Cmd c, Elf *elf)
{
	Elf *e;
	off_t next;
	size_t nsz, sz;
	struct ar_hdr *arh;
	char *member, *namelen;

	FUNC3(elf->e_kind == ELF_K_AR);

	next = elf->e_u.e_ar.e_next;

	/*
	 * `next' is only set to zero by elf_next() when the last
	 * member of an archive is processed.
	 */
	if (next == (off_t) 0)
		return (NULL);

	FUNC3((next & 1) == 0);

	arh = (struct ar_hdr *) (elf->e_rawfile + next);

	/*
	 * Retrieve the size of the member.
	 */
	if (FUNC2(arh->ar_size, sizeof(arh->ar_size), 10,
	    &sz) == 0) {
		FUNC1(ARCHIVE, 0);
		return (NULL);
	}

	/*
	 * Adjust the size field for members in BSD archives using
	 * extended naming.
	 */
	if (FUNC0(arh->ar_name)) {
		namelen = arh->ar_name +
		    LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE;
		if (FUNC2(namelen, sizeof(arh->ar_name) -
		    LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE, 10, &nsz) == 0) {
			FUNC1(ARCHIVE, 0);
			return (NULL);
		}

		member = (char *) (arh + 1) + nsz;
		sz -= nsz;
	} else
		member = (char *) (arh + 1);


	if ((e = FUNC4(member, sz)) == NULL)
		return (NULL);

	e->e_fd = fd;
	e->e_cmd = c;
	e->e_hdr.e_rawhdr = (unsigned char *) arh;

	elf->e_u.e_ar.e_nchildren++;
	e->e_parent = elf;

	return (e);
}