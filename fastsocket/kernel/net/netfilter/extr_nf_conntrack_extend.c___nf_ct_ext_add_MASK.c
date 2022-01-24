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
struct nf_ct_ext_type {int len; int /*<<< orphan*/  (* move ) (void*,void*) ;int /*<<< orphan*/  align; } ;
struct nf_ct_ext {int len; int* offset; int /*<<< orphan*/  rcu; } ;
struct nf_conn {struct nf_ct_ext* ext; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nf_ct_ext_id { ____Placeholder_nf_ct_ext_id } nf_ct_ext_id ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int NF_CT_EXT_NUM ; 
 struct nf_ct_ext* FUNC3 (struct nf_ct_ext*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __nf_ct_ext_free_rcu ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (struct nf_ct_ext**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct nf_conn*,int) ; 
 int /*<<< orphan*/ * nf_ct_ext_types ; 
 int /*<<< orphan*/  FUNC8 (struct nf_conn*) ; 
 struct nf_ct_ext_type* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (void*,void*) ; 

void *FUNC13(struct nf_conn *ct, enum nf_ct_ext_id id, gfp_t gfp)
{
	struct nf_ct_ext *new;
	int i, newlen, newoff;
	struct nf_ct_ext_type *t;

	/* Conntrack must not be confirmed to avoid races on reallocation. */
	FUNC2(!FUNC8(ct));

	if (!ct->ext)
		return FUNC6(&ct->ext, id, gfp);

	if (FUNC7(ct, id))
		return NULL;

	FUNC10();
	t = FUNC9(nf_ct_ext_types[id]);
	FUNC1(t == NULL);

	newoff = FUNC0(ct->ext->len, t->align);
	newlen = newoff + t->len;
	FUNC11();

	new = FUNC3(ct->ext, newlen, gfp);
	if (!new)
		return NULL;

	if (new != ct->ext) {
		for (i = 0; i < NF_CT_EXT_NUM; i++) {
			if (!FUNC7(ct, i))
				continue;

			FUNC10();
			t = FUNC9(nf_ct_ext_types[i]);
			if (t && t->move)
				t->move((void *)new + new->offset[i],
					(void *)ct->ext + ct->ext->offset[i]);
			FUNC11();
		}
		FUNC4(&ct->ext->rcu, __nf_ct_ext_free_rcu);
		ct->ext = new;
	}

	new->offset[id] = newoff;
	new->len = newlen;
	FUNC5((void *)new + newoff, 0, newlen - newoff);
	return (void *)new + newoff;
}