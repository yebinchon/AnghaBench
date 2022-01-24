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
struct TYPE_3__ {int str_nbufs; int /*<<< orphan*/  str_ptr; int /*<<< orphan*/ * str_bufs; int /*<<< orphan*/  str_bufsz; } ;
typedef  TYPE_1__ strtab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(strtab_t *sp)
{
	sp->str_nbufs++;
	sp->str_bufs = FUNC1(sp->str_bufs, sp->str_nbufs * sizeof (char *));
	sp->str_ptr = FUNC0(sp->str_bufsz);
	sp->str_bufs[sp->str_nbufs - 1] = sp->str_ptr;
}