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
typedef  size_t u8 ;
struct xfrm_type {int /*<<< orphan*/  owner; } ;
struct xfrm_state_afinfo {struct xfrm_type** type_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned short,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct xfrm_state_afinfo* FUNC3 (unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_state_afinfo*) ; 

__attribute__((used)) static const struct xfrm_type *FUNC5(u8 proto, unsigned short family)
{
	struct xfrm_state_afinfo *afinfo;
	const struct xfrm_type **typemap;
	const struct xfrm_type *type;
	int modload_attempted = 0;

retry:
	afinfo = FUNC3(family);
	if (FUNC2(afinfo == NULL))
		return NULL;
	typemap = afinfo->type_map;

	type = typemap[proto];
	if (FUNC2(type && !FUNC1(type->owner)))
		type = NULL;
	if (!type && !modload_attempted) {
		FUNC4(afinfo);
		FUNC0("xfrm-type-%d-%d", family, proto);
		modload_attempted = 1;
		goto retry;
	}

	FUNC4(afinfo);
	return type;
}