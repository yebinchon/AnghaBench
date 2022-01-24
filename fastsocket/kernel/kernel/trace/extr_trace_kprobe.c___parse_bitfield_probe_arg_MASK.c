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
struct fetch_type {int /*<<< orphan*/  size; int /*<<< orphan*/ * fetch; } ;
struct fetch_param {void* data; int /*<<< orphan*/  fn; } ;
struct bitfield_fetch_param {unsigned long hi_shift; unsigned long low_shift; struct fetch_param orig; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 size_t FETCH_MTD_bitfield ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct bitfield_fetch_param* FUNC1 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *bf,
				      const struct fetch_type *t,
				      struct fetch_param *f)
{
	struct bitfield_fetch_param *bprm;
	unsigned long bw, bo;
	char *tail;

	if (*bf != 'b')
		return 0;

	bprm = FUNC1(sizeof(*bprm), GFP_KERNEL);
	if (!bprm)
		return -ENOMEM;
	bprm->orig = *f;
	f->fn = t->fetch[FETCH_MTD_bitfield];
	f->data = (void *)bprm;

	bw = FUNC2(bf + 1, &tail, 0);	/* Use simple one */
	if (bw == 0 || *tail != '@')
		return -EINVAL;

	bf = tail + 1;
	bo = FUNC2(bf, &tail, 0);
	if (tail == bf || *tail != '/')
		return -EINVAL;

	bprm->hi_shift = FUNC0(t->size) - (bw + bo);
	bprm->low_shift = bprm->hi_shift + bo;
	return (FUNC0(t->size) < (bw + bo)) ? -EINVAL : 0;
}