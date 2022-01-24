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
struct TYPE_2__ {char* name; int version; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__* protocol_versions ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

unsigned
FUNC3(const char *name, size_t len)
{
	size_t u;

	for (u = 0;; u ++) {
		const char *ref;

		ref = protocol_versions[u].name;
		if (ref == NULL) {
			FUNC1(stderr, "ERROR: unrecognised protocol"
				" version name: '%s'\n", name);
			return 0;
		}
		if (FUNC0(ref, FUNC2(ref), name, len)) {
			return protocol_versions[u].version;
		}
	}
}