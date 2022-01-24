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
typedef  int /*<<< orphan*/  u64 ;
struct ref_reloc_sym {int /*<<< orphan*/  addr; int /*<<< orphan*/ * name; } ;
struct map {int dummy; } ;
struct kmap {struct ref_reloc_sym* ref_reloc_sym; } ;
typedef  enum map_type { ____Placeholder_map_type } map_type ;

/* Variables and functions */
 int ENOMEM ; 
 int MAP__NR_TYPES ; 
 int /*<<< orphan*/  FUNC0 (struct ref_reloc_sym*) ; 
 struct kmap* FUNC1 (struct map*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 struct ref_reloc_sym* FUNC4 (int) ; 

int FUNC5(struct map **maps,
				     const char *symbol_name, u64 addr)
{
	char *bracket;
	enum map_type i;
	struct ref_reloc_sym *ref;

	ref = FUNC4(sizeof(struct ref_reloc_sym));
	if (ref == NULL)
		return -ENOMEM;

	ref->name = FUNC3(symbol_name);
	if (ref->name == NULL) {
		FUNC0(ref);
		return -ENOMEM;
	}

	bracket = FUNC2(ref->name, ']');
	if (bracket)
		*bracket = '\0';

	ref->addr = addr;

	for (i = 0; i < MAP__NR_TYPES; ++i) {
		struct kmap *kmap = FUNC1(maps[i]);
		kmap->ref_reloc_sym = ref;
	}

	return 0;
}