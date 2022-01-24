#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ps_prochandle {int dummy; } ;
typedef  int /*<<< orphan*/  prsyminfo_t ;
struct TYPE_5__ {char* pr_mapname; } ;
typedef  TYPE_1__ prmap_t ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_6__ {uintptr_t st_value; } ;
typedef  TYPE_2__ GElf_Sym ;

/* Variables and functions */
 unsigned long LM_ID_BASE ; 
 scalar_t__ FUNC0 (struct ps_prochandle*,uintptr_t,char*,int,TYPE_2__*,int*) ; 
 TYPE_1__* FUNC1 (struct ps_prochandle*,uintptr_t) ; 
 size_t FUNC2 (char*,size_t,char*,...) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(struct ps_prochandle *P, uintptr_t addr, char *buf, size_t size,
    int nolocks)
{
	char name[256];
	GElf_Sym sym;
#ifdef illumos
	prsyminfo_t info;
#else
	prmap_t *map;
	int info; /* XXX unused */
#endif
	size_t len;

	if (P == NULL || FUNC0(P, addr, name, sizeof (name),
	    &sym, &info) != 0) {
		(void) FUNC2(buf, size, "%#lx", (unsigned long)addr);
		return (0);
	}
#ifdef illumos
	if (info.prs_object == NULL)
		info.prs_object = "<unknown>";

	if (info.prs_lmid != LM_ID_BASE) {
		len = snprintf(buf, size, "LM%lu`", info.prs_lmid);
		buf += len;
		size -= len;
	}

	len = snprintf(buf, size, "%s`%s", info.prs_object, info.prs_name);
#else
	map = FUNC1(P, addr);
	len = FUNC2(buf, size, "%s`%s", map->pr_mapname, name);
#endif
	buf += len;
	size -= len;

	if (sym.st_value != addr)
		len = FUNC2(buf, size, "+%#lx", (unsigned long)(addr - sym.st_value));

	if (nolocks && FUNC3("libc.so.1", map->pr_mapname) == 0 &&
	    (FUNC4("mutex", name) == 0 ||
	    FUNC4("rw", name) == 0))
		return (-1);

	return (0);
}