#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ocfs2_super {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_total; } ;
struct TYPE_5__ {TYPE_1__ bitmap1; } ;
struct ocfs2_dinode {TYPE_2__ id1; } ;
struct TYPE_6__ {void* la_bitmap; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct ocfs2_dinode*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (void*,int,int) ; 

__attribute__((used)) static int FUNC6(struct ocfs2_super *osb,
					     struct ocfs2_dinode *alloc,
					     u32 numbits)
{
	int numfound, bitoff, left, startoff, lastzero;
	void *bitmap = NULL;

	FUNC3("(numbits wanted = %u)\n", numbits);

	if (!alloc->id1.bitmap1.i_total) {
		FUNC2(0, "No bits in my window!\n");
		bitoff = -1;
		goto bail;
	}

	bitmap = FUNC0(alloc)->la_bitmap;

	numfound = bitoff = startoff = 0;
	lastzero = -1;
	left = FUNC1(alloc->id1.bitmap1.i_total);
	while ((bitoff = FUNC5(bitmap, left, startoff)) != -1) {
		if (bitoff == left) {
			/* mlog(0, "bitoff (%d) == left", bitoff); */
			break;
		}
		/* mlog(0, "Found a zero: bitoff = %d, startoff = %d, "
		   "numfound = %d\n", bitoff, startoff, numfound);*/

		/* Ok, we found a zero bit... is it contig. or do we
		 * start over?*/
		if (bitoff == startoff) {
			/* we found a zero */
			numfound++;
			startoff++;
		} else {
			/* got a zero after some ones */
			numfound = 1;
			startoff = bitoff+1;
		}
		/* we got everything we needed */
		if (numfound == numbits) {
			/* mlog(0, "Found it all!\n"); */
			break;
		}
	}

	FUNC2(0, "Exiting loop, bitoff = %d, numfound = %d\n", bitoff,
	     numfound);

	if (numfound == numbits)
		bitoff = startoff - numfound;
	else
		bitoff = -1;

bail:
	FUNC4(bitoff);
	return bitoff;
}