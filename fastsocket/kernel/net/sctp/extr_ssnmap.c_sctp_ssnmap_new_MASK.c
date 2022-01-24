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
struct sctp_ssnmap {int malloced; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int MAX_KMALLOC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_ssnmap*) ; 
 struct sctp_ssnmap* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_ssnmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssnmap ; 

struct sctp_ssnmap *FUNC8(__u16 in, __u16 out,
				    gfp_t gfp)
{
	struct sctp_ssnmap *retval;
	int size;

	size = FUNC7(in, out);
	if (size <= MAX_KMALLOC_SIZE)
		retval = FUNC5(size, gfp);
	else
		retval = (struct sctp_ssnmap *)
			  FUNC1(gfp, FUNC3(size));
	if (!retval)
		goto fail;

	if (!FUNC6(retval, in, out))
		goto fail_map;

	retval->malloced = 1;
	FUNC0(ssnmap);

	return retval;

fail_map:
	if (size <= MAX_KMALLOC_SIZE)
		FUNC4(retval);
	else
		FUNC2((unsigned long)retval, FUNC3(size));
fail:
	return NULL;
}