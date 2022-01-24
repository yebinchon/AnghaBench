#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symfs_vmlinux ;
typedef  int /*<<< orphan*/  symbol_filter_t ;
struct symsrc {int dummy; } ;
struct map {int /*<<< orphan*/  type; } ;
struct dso {scalar_t__ kernel; } ;
typedef  enum dso_binary_type { ____Placeholder_dso_binary_type } dso_binary_type ;
struct TYPE_2__ {char* symfs; } ;

/* Variables and functions */
 int DSO_BINARY_TYPE__GUEST_VMLINUX ; 
 int DSO_BINARY_TYPE__VMLINUX ; 
 scalar_t__ DSO_TYPE_GUEST_KERNEL ; 
 int PATH_MAX ; 
 int FUNC0 (struct dso*,struct map*,struct symsrc*,struct symsrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dso*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dso*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char const*) ; 
 TYPE_1__ symbol_conf ; 
 int /*<<< orphan*/  FUNC5 (struct symsrc*) ; 
 scalar_t__ FUNC6 (struct symsrc*,struct dso*,char*,int) ; 

int FUNC7(struct dso *dso, struct map *map,
		      const char *vmlinux, symbol_filter_t filter)
{
	int err = -1;
	struct symsrc ss;
	char symfs_vmlinux[PATH_MAX];
	enum dso_binary_type symtab_type;

	FUNC4(symfs_vmlinux, sizeof(symfs_vmlinux), "%s%s",
		 symbol_conf.symfs, vmlinux);

	if (dso->kernel == DSO_TYPE_GUEST_KERNEL)
		symtab_type = DSO_BINARY_TYPE__GUEST_VMLINUX;
	else
		symtab_type = DSO_BINARY_TYPE__VMLINUX;

	if (FUNC6(&ss, dso, symfs_vmlinux, symtab_type))
		return -1;

	err = FUNC0(dso, map, &ss, &ss, filter, 0);
	FUNC5(&ss);

	if (err > 0) {
		FUNC2(dso, (char *)vmlinux);
		FUNC1(dso, map->type);
		FUNC3("Using %s for symbols\n", symfs_vmlinux);
	}

	return err;
}