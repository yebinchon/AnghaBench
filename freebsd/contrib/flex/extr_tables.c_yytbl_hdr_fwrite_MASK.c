#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct yytbl_writer {int /*<<< orphan*/  th_ssize_pos; int /*<<< orphan*/  out; } ;
struct yytbl_hdr {scalar_t__ th_hsize; int /*<<< orphan*/  th_name; int /*<<< orphan*/  th_version; int /*<<< orphan*/  th_flags; scalar_t__ th_ssize; scalar_t__ th_magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct yytbl_writer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct yytbl_writer*,scalar_t__) ; 
 int FUNC6 (struct yytbl_writer*) ; 
 int FUNC7 (struct yytbl_writer*,int /*<<< orphan*/ ,int) ; 

int FUNC8 (struct yytbl_writer *wr, const struct yytbl_hdr *th)
{
	int  sz, rv;
	int     bwritten = 0;

	if (FUNC5 (wr, th->th_magic) < 0
	    || FUNC5 (wr, th->th_hsize) < 0)
		FUNC2 (FUNC0("th_magic|th_hsize write32 failed"));
	bwritten += 8;

	if (FUNC1 (wr->out, &(wr->th_ssize_pos)) != 0)
		FUNC2 (FUNC0("fgetpos failed"));

	if (FUNC5 (wr, th->th_ssize) < 0
	    || FUNC4 (wr, th->th_flags) < 0)
		FUNC2 (FUNC0("th_ssize|th_flags write failed"));
	bwritten += 6;

	sz = FUNC3 (th->th_version) + 1;
	if ((rv = FUNC7 (wr, th->th_version, sz)) != sz)
		FUNC2 (FUNC0("th_version writen failed"));
	bwritten += rv;

	sz = FUNC3 (th->th_name) + 1;
	if ((rv = FUNC7 (wr, th->th_name, sz)) != sz)
		FUNC2 (FUNC0("th_name writen failed"));
	bwritten += rv;

	/* add padding */
	if ((rv = FUNC6 (wr)) < 0)
		FUNC2 (FUNC0("pad64 failed"));
	bwritten += rv;

	/* Sanity check */
	if (bwritten != (int) th->th_hsize)
		FUNC2 (FUNC0("pad64 failed"));

	return bwritten;
}