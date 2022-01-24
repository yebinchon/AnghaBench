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
struct nf_ct_ext_type {size_t id; scalar_t__ len; int /*<<< orphan*/  align; scalar_t__ alloc_size; } ;
struct nf_ct_ext {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_ct_ext_type_mutex ; 
 scalar_t__* nf_ct_ext_types ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct nf_ct_ext_type*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_ct_ext_type*) ; 

int FUNC5(struct nf_ct_ext_type *type)
{
	int ret = 0;

	FUNC1(&nf_ct_ext_type_mutex);
	if (nf_ct_ext_types[type->id]) {
		ret = -EBUSY;
		goto out;
	}

	/* This ensures that nf_ct_ext_create() can allocate enough area
	   before updating alloc_size */
	type->alloc_size = FUNC0(sizeof(struct nf_ct_ext), type->align)
			   + type->len;
	FUNC3(nf_ct_ext_types[type->id], type);
	FUNC4(type);
out:
	FUNC2(&nf_ct_ext_type_mutex);
	return ret;
}