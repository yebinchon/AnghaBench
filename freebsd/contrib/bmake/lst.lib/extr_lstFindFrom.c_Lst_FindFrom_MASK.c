#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void const* datum; struct TYPE_6__* nextPtr; } ;
typedef  TYPE_1__* LstNode ;
typedef  int /*<<< orphan*/  Lst ;
typedef  TYPE_1__* ListNode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (void const*,void const*) ; 

LstNode
FUNC4(Lst l, LstNode ln, const void *d,
	     int (*cProc)(const void *, const void *))
{
    ListNode	tln;

    if (!FUNC2 (l) || FUNC0 (l) || !FUNC1 (ln, l)) {
	return NULL;
    }

    tln = ln;

    do {
	if ((*cProc)(tln->datum, d) == 0)
	    return (tln);
	tln = tln->nextPtr;
    } while (tln != ln && tln != NULL);

    return NULL;
}