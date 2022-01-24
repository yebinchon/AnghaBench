#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uchar_t ;
struct TYPE_11__ {int /*<<< orphan*/  td_iihash; } ;
typedef  TYPE_1__ tdata_t ;
struct TYPE_12__ {int /*<<< orphan*/  ii_type; } ;
typedef  TYPE_2__ iidesc_t ;
struct TYPE_13__ {int /*<<< orphan*/  st_info; } ;
typedef  TYPE_3__ GElf_Sym ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  II_GFUN ; 
 int /*<<< orphan*/  II_GVAR ; 
#define  STT_FUNC 129 
#define  STT_OBJECT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*,char const*,char const*) ; 

__attribute__((used)) static iidesc_t *
FUNC3(tdata_t *td, GElf_Sym *sym, iidesc_t *strongdesc,
    const char *weakname, const char *weakfile)
{
	iidesc_t *new = FUNC2(strongdesc, weakname, weakfile);
	uchar_t type = FUNC0(sym->st_info);

	switch (type) {
	case STT_OBJECT:
		new->ii_type = II_GVAR;
		break;
	case STT_FUNC:
		new->ii_type = II_GFUN;
		break;
	}

	FUNC1(td->td_iihash, new);

	return (new);
}