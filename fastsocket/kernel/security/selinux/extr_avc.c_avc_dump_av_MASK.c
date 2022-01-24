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
typedef  int u32 ;
typedef  int u16 ;
struct audit_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  av ;
struct TYPE_2__ {char** perms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,char*,...) ; 
 TYPE_1__* secclass_map ; 

__attribute__((used)) static void FUNC1(struct audit_buffer *ab, u16 tclass, u32 av)
{
	const char **perms;
	int i, perm;

	if (av == 0) {
		FUNC0(ab, " null");
		return;
	}

	perms = secclass_map[tclass-1].perms;

	FUNC0(ab, " {");
	i = 0;
	perm = 1;
	while (i < (sizeof(av) * 8)) {
		if ((perm & av) && perms[i]) {
			FUNC0(ab, " %s", perms[i]);
			av &= ~perm;
		}
		i++;
		perm <<= 1;
	}

	if (av)
		FUNC0(ab, " 0x%x", av);

	FUNC0(ab, " }");
}