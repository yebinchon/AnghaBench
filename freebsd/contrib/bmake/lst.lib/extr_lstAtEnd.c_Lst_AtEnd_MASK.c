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
typedef  int /*<<< orphan*/  ReturnStatus ;
typedef  int /*<<< orphan*/  LstNode ;
typedef  int /*<<< orphan*/  Lst ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

ReturnStatus
FUNC2(Lst l, void *d)
{
    LstNode	end;

    end = FUNC1(l);
    return (FUNC0(l, end, d));
}