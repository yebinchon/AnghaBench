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
struct xfrm_type {size_t proto; } ;
struct xfrm_state_afinfo {struct xfrm_type** type_map; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (int) ; 
 struct xfrm_state_afinfo* FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_state_afinfo*) ; 

int FUNC3(const struct xfrm_type *type, unsigned short family)
{
	struct xfrm_state_afinfo *afinfo = FUNC1(family);
	const struct xfrm_type **typemap;
	int err = 0;

	if (FUNC0(afinfo == NULL))
		return -EAFNOSUPPORT;
	typemap = afinfo->type_map;

	if (FUNC0(typemap[type->proto] != type))
		err = -ENOENT;
	else
		typemap[type->proto] = NULL;
	FUNC2(afinfo);
	return err;
}