#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
struct ar_hdr {char* ar_uid; char* ar_gid; char* ar_mode; char* ar_size; char* ar_name; } ;
typedef  scalar_t__ mode_t ;
typedef  scalar_t__ gid_t ;
struct TYPE_11__ {unsigned char* e_rawhdr; TYPE_2__* e_arhdr; } ;
struct TYPE_13__ {int e_flags; uintptr_t e_rawsize; TYPE_1__ e_hdr; scalar_t__ e_rawfile; struct TYPE_13__* e_parent; } ;
struct TYPE_12__ {size_t ar_size; struct TYPE_12__* ar_rawname; struct TYPE_12__* ar_name; scalar_t__ ar_flags; scalar_t__ ar_mode; scalar_t__ ar_gid; scalar_t__ ar_uid; } ;
typedef  TYPE_2__ Elf_Arhdr ;
typedef  TYPE_3__ Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARGUMENT ; 
 scalar_t__ FUNC0 (char*) ; 
 int LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE ; 
 int LIBELF_F_AR_HEADER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESOURCE ; 
 uintptr_t SARMAG ; 
 scalar_t__ FUNC2 (char*,int,int,size_t*) ; 
 TYPE_2__* FUNC3 (struct ar_hdr*) ; 
 TYPE_2__* FUNC4 (struct ar_hdr*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int) ; 

Elf_Arhdr *
FUNC8(Elf *e)
{
	Elf *parent;
	Elf_Arhdr *eh;
	char *namelen;
	size_t n, nlen;
	struct ar_hdr *arh;

	if ((parent = e->e_parent) == NULL) {
		FUNC1(ARGUMENT, 0);
		return (NULL);
	}

	FUNC5((e->e_flags & LIBELF_F_AR_HEADER) == 0);

	arh = (struct ar_hdr *) (uintptr_t) e->e_hdr.e_rawhdr;

	FUNC5((uintptr_t) arh >= (uintptr_t) parent->e_rawfile + SARMAG);
	FUNC5((uintptr_t) arh <= (uintptr_t) parent->e_rawfile +
	    parent->e_rawsize - sizeof(struct ar_hdr));

	if ((eh = FUNC7(sizeof(Elf_Arhdr))) == NULL) {
		FUNC1(RESOURCE, 0);
		return (NULL);
	}

	e->e_hdr.e_arhdr = eh;
	e->e_flags |= LIBELF_F_AR_HEADER;

	eh->ar_name = eh->ar_rawname = NULL;

	if ((eh->ar_name = FUNC4(arh, parent)) ==
	    NULL)
		goto error;

	if (FUNC2(arh->ar_uid, sizeof(arh->ar_uid), 10,
	    &n) == 0)
		goto error;
	eh->ar_uid = (uid_t) n;

	if (FUNC2(arh->ar_gid, sizeof(arh->ar_gid), 10,
	    &n) == 0)
		goto error;
	eh->ar_gid = (gid_t) n;

	if (FUNC2(arh->ar_mode, sizeof(arh->ar_mode), 8,
	    &n) == 0)
		goto error;
	eh->ar_mode = (mode_t) n;

	if (FUNC2(arh->ar_size, sizeof(arh->ar_size), 10,
	    &n) == 0)
		goto error;

	/*
	 * Get the true size of the member if extended naming is being used.
	 */
	if (FUNC0(arh->ar_name)) {
		namelen = arh->ar_name +
		    LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE;
		if (FUNC2(namelen, sizeof(arh->ar_name) -
		    LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE, 10, &nlen) == 0)
			goto error;
		n -= nlen;
	}

	eh->ar_size = n;

	if ((eh->ar_rawname = FUNC3(arh)) == NULL)
		goto error;

	eh->ar_flags = 0;

	return (eh);

 error:
	if (eh) {
		if (eh->ar_name)
			FUNC6(eh->ar_name);
		if (eh->ar_rawname)
			FUNC6(eh->ar_rawname);
		FUNC6(eh);
	}

	e->e_flags &= ~LIBELF_F_AR_HEADER;
	e->e_hdr.e_rawhdr = (unsigned char *) arh;

	return (NULL);
}