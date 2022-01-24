#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tp_name ;
struct TYPE_3__ {int max; struct syscall* table; } ;
struct trace {TYPE_1__ syscalls; int /*<<< orphan*/  audit_machine; } ;
struct syscall {char const* name; int /*<<< orphan*/ * tp_format; TYPE_2__* fmt; } ;
struct TYPE_4__ {char const* alias; } ;

/* Variables and functions */
 char* FUNC0 (int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct syscall*,int /*<<< orphan*/ ,int) ; 
 struct syscall* FUNC3 (struct syscall*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 
 TYPE_2__* FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(struct trace *trace, int id)
{
	char tp_name[128];
	struct syscall *sc;
	const char *name = FUNC0(id, trace->audit_machine);

	if (name == NULL)
		return -1;

	if (id > trace->syscalls.max) {
		struct syscall *nsyscalls = FUNC3(trace->syscalls.table, (id + 1) * sizeof(*sc));

		if (nsyscalls == NULL)
			return -1;

		if (trace->syscalls.max != -1) {
			FUNC2(nsyscalls + trace->syscalls.max + 1, 0,
			       (id - trace->syscalls.max) * sizeof(*sc));
		} else {
			FUNC2(nsyscalls, 0, (id + 1) * sizeof(*sc));
		}

		trace->syscalls.table = nsyscalls;
		trace->syscalls.max   = id;
	}

	sc = trace->syscalls.table + id;
	sc->name = name;
	sc->fmt  = FUNC5(sc->name);

	FUNC4(tp_name, sizeof(tp_name), "sys_enter_%s", sc->name);
	sc->tp_format = FUNC1("syscalls", tp_name);

	if (sc->tp_format == NULL && sc->fmt && sc->fmt->alias) {
		FUNC4(tp_name, sizeof(tp_name), "sys_enter_%s", sc->fmt->alias);
		sc->tp_format = FUNC1("syscalls", tp_name);
	}

	return sc->tp_format != NULL ? 0 : -1;
}