#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* datum; } ;
typedef  int /*<<< orphan*/  Lst ;
typedef  TYPE_1__* ListNode ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void *
FUNC2(Lst l)
{
    void *rd;
    ListNode	tln;

    tln = FUNC0(l);
    if (tln == NULL) {
	return NULL;
    }

    rd = tln->datum;
    if (FUNC1(l, tln) == FAILURE) {
	return NULL;
    } else {
	return (rd);
    }
}