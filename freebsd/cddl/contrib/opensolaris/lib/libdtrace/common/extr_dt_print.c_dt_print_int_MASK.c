#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ulong_t ;
struct TYPE_8__ {scalar_t__ pa_addr; int /*<<< orphan*/ * pa_ctfp; int /*<<< orphan*/ * pa_file; } ;
typedef  TYPE_1__ dt_printarg_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
struct TYPE_9__ {int cte_format; size_t cte_bits; } ;
typedef  TYPE_2__ ctf_encoding_t ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CTF_ERR ; 
 int CTF_INT_VARARGS ; 
 scalar_t__ FUNC0 (TYPE_2__) ; 
 size_t NBBY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(ctf_id_t base, ulong_t off, dt_printarg_t *pap)
{
	FILE *fp = pap->pa_file;
	ctf_file_t *ctfp = pap->pa_ctfp;
	ctf_encoding_t e;
	size_t size;
	caddr_t addr = pap->pa_addr + off / NBBY;

	if (FUNC1(ctfp, base, &e) == CTF_ERR) {
		(void) FUNC3(fp, "<unknown encoding>");
		return;
	}

	/*
	 * This comes from MDB - it's not clear under what circumstances this
	 * would be found.
	 */
	if (e.cte_format & CTF_INT_VARARGS) {
		(void) FUNC3(fp, "...");
		return;
	}

	/*
	 * We print this as a bitfield if the bit encoding indicates it's not
	 * an even power of two byte size, or is larger than 8 bytes.
	 */
	size = e.cte_bits / NBBY;
	if (size > 8 || (e.cte_bits % NBBY) != 0 || (size & (size - 1)) != 0) {
		FUNC5(pap, off, &e);
		return;
	}

	/*
	 * If this is a character, print it out as such.
	 */
	if (FUNC0(e)) {
		char c = *(char *)addr;
		if (FUNC4(c))
			(void) FUNC3(fp, "'%c'", c);
		else if (c == 0)
			(void) FUNC3(fp, "'\\0'");
		else
			(void) FUNC3(fp, "'\\%03o'", c);
		return;
	}

	FUNC2(fp, addr, size);
}