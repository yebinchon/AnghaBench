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
struct field_t {unsigned int lb; int /*<<< orphan*/  sz; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  bitstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int H323_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int TAB_SIZE ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(bitstr_t *bs, const struct field_t *f,
                         char *base, int level)
{
	unsigned int len;

	FUNC3("%*.s%s\n", level * TAB_SIZE, " ", f->name);

	/* 2 <= Range <= 255 */
	len = FUNC4(bs, f->sz) + f->lb;

	FUNC0(bs);
	FUNC2(bs, (len << 2));

	FUNC1(bs, 0);
	return H323_ERROR_NONE;
}