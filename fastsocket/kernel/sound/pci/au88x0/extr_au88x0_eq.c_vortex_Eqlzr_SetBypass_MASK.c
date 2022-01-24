#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  this0c; int /*<<< orphan*/  this14_array; int /*<<< orphan*/  this08; scalar_t__ this28; } ;
struct TYPE_9__ {TYPE_2__ eq; } ;
typedef  TYPE_1__ vortex_t ;
typedef  scalar_t__ u32 ;
typedef  TYPE_2__ eqlzr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(vortex_t * vortex, u32 bp)
{
	eqlzr_t *eq = &(vortex->eq);
	
	if ((eq->this28) && (bp == 0)) {
		/* EQ enabled */
		FUNC4(vortex);
		FUNC0(vortex, eq->this08, eq->this08);
	} else {
		/* EQ disabled. */
		FUNC1(vortex, eq->this14_array);
		FUNC2(vortex, eq->this14_array);
		FUNC0(vortex, eq->this0c, eq->this0c);
	}
	FUNC3(vortex);
}