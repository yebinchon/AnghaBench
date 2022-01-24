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
struct section {int /*<<< orphan*/  sz; int /*<<< orphan*/  buf; int /*<<< orphan*/  align; int /*<<< orphan*/  os; } ;
struct TYPE_3__ {int /*<<< orphan*/  d_version; int /*<<< orphan*/  d_size; int /*<<< orphan*/  d_buf; scalar_t__ d_off; int /*<<< orphan*/  d_align; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  EV_CURRENT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct section *s)
{
	Elf_Data *od;

	if ((od = FUNC1(s->os)) == NULL)
		FUNC2(EXIT_FAILURE, "elf_newdata() failed: %s",
		    FUNC0(-1));
	od->d_align = s->align;
	od->d_off = 0;
	od->d_buf = s->buf;
	od->d_size = s->sz;
	od->d_version = EV_CURRENT;
}