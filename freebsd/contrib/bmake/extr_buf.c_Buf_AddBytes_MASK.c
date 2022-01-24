#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int count; int size; scalar_t__* buffer; } ;
typedef  scalar_t__ Byte ;
typedef  TYPE_1__ Buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__* FUNC1 (scalar_t__*,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__ const*,int) ; 

void
FUNC4(Buffer *bp, int numBytes, const Byte *bytesPtr)
{
    int count = bp->count;
    Byte *ptr;

    if (FUNC0(count + numBytes >= bp->size)) {
	bp->size += FUNC2(bp->size, numBytes + 16);
	bp->buffer = FUNC1(bp->buffer, bp->size);
    }

    ptr = bp->buffer + count;
    bp->count = count + numBytes;
    ptr[numBytes] = 0;
    FUNC3(ptr, bytesPtr, numBytes);
}