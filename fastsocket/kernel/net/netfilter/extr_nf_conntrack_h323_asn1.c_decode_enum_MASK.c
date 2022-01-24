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
struct field_t {int attr; int sz; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  bitstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int EXT ; 
 int H323_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int TAB_SIZE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(bitstr_t *bs, const struct field_t *f,
                       char *base, int level)
{
	FUNC2("%*.s%s\n", level * TAB_SIZE, " ", f->name);

	if ((f->attr & EXT) && FUNC3(bs)) {
		FUNC1(bs, 7);
	} else {
		FUNC1(bs, f->sz);
	}

	FUNC0(bs, 0);
	return H323_ERROR_NONE;
}