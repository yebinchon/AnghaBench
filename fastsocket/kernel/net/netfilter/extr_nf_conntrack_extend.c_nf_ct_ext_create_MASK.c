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
struct nf_ct_ext_type {unsigned int len; int /*<<< orphan*/  alloc_size; int /*<<< orphan*/  align; } ;
struct nf_ct_ext {unsigned int* offset; unsigned int len; int /*<<< orphan*/  rcu; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nf_ct_ext_id { ____Placeholder_nf_ct_ext_id } nf_ct_ext_id ;

/* Variables and functions */
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nf_ct_ext* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nf_ct_ext_types ; 
 struct nf_ct_ext_type* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void *
FUNC7(struct nf_ct_ext **ext, enum nf_ct_ext_id id, gfp_t gfp)
{
	unsigned int off, len;
	struct nf_ct_ext_type *t;

	FUNC5();
	t = FUNC4(nf_ct_ext_types[id]);
	FUNC1(t == NULL);
	off = FUNC0(sizeof(struct nf_ct_ext), t->align);
	len = off + t->len;
	FUNC6();

	*ext = FUNC3(t->alloc_size, gfp);
	if (!*ext)
		return NULL;

	FUNC2(&(*ext)->rcu);
	(*ext)->offset[id] = off;
	(*ext)->len = len;

	return (void *)(*ext) + off;
}