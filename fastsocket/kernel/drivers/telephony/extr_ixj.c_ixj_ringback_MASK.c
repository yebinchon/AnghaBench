#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ringback; scalar_t__ dialtone; scalar_t__ busytone; } ;
struct TYPE_8__ {TYPE_1__ flags; } ;
typedef  TYPE_2__ IXJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(IXJ *j)
{
	j->flags.busytone = 0;
	j->flags.dialtone = 0;
	j->flags.ringback = 1;
	FUNC2(0x0FA0, j);
	FUNC1(0x2EE0, j);
	FUNC0(j, 26);
}