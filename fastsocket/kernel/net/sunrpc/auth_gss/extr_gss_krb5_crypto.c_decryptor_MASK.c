#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int length; scalar_t__ offset; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct decryptor_desc {int fraglen; int fragno; int /*<<< orphan*/ * frags; TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC7(struct scatterlist *sg, void *data)
{
	struct decryptor_desc *desc = data;
	int thislen = desc->fraglen + sg->length;
	int fraglen, ret;

	/* Worst case is 4 fragments: head, end of page 1, start
	 * of page 2, tail.  Anything more is a bug. */
	FUNC0(desc->fragno > 3);
	FUNC6(&desc->frags[desc->fragno], FUNC5(sg), sg->length,
		    sg->offset);
	desc->fragno++;
	desc->fraglen += sg->length;

	fraglen = thislen & (FUNC1(desc->desc.tfm) - 1);
	thislen -= fraglen;

	if (thislen == 0)
		return 0;

	FUNC4(&desc->frags[desc->fragno - 1]);

	ret = FUNC2(&desc->desc, desc->frags,
					  desc->frags, thislen);
	if (ret)
		return ret;

	FUNC3(desc->frags, 4);

	if (fraglen) {
		FUNC6(&desc->frags[0], FUNC5(sg), fraglen,
				sg->offset + sg->length - fraglen);
		desc->fragno = 1;
		desc->fraglen = fraglen;
	} else {
		desc->fragno = 0;
		desc->fraglen = 0;
	}
	return 0;
}