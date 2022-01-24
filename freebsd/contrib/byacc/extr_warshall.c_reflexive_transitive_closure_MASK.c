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

/* Variables and functions */
 unsigned int BITS_PER_WORD ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,int) ; 

void
FUNC2(unsigned *R, int n)
{
    int rowsize;
    unsigned i;
    unsigned *rp;
    unsigned *relend;

    FUNC1(R, n);

    rowsize = FUNC0(n);
    relend = R + n * rowsize;

    i = 0;
    rp = R;
    while (rp < relend)
    {
	*rp |= (unsigned)(1 << i);
	if (++i >= BITS_PER_WORD)
	{
	    i = 0;
	    rp++;
	}

	rp += rowsize;
    }
}