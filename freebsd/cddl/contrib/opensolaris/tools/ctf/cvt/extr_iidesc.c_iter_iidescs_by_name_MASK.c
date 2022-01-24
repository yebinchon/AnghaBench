#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmpdesc ;
struct TYPE_6__ {int /*<<< orphan*/  td_iihash; } ;
typedef  TYPE_1__ tdata_t ;
struct TYPE_7__ {int /*<<< orphan*/  ii_name; } ;
typedef  TYPE_2__ iidesc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int (*) (void*,void*),void*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

void
FUNC4(tdata_t *td, char const *name,
    int (*func)(void *, void *), void *data)
{
	iidesc_t tmpdesc;
	FUNC0(&tmpdesc, sizeof(tmpdesc));
	tmpdesc.ii_name = FUNC3(name);
	(void) FUNC2(td->td_iihash, &tmpdesc, func, data);
	FUNC1(tmpdesc.ii_name);
}