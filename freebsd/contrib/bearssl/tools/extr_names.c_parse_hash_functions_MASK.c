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
struct TYPE_4__ {char* name; TYPE_1__* hclass; } ;
struct TYPE_3__ {int desc; } ;

/* Variables and functions */
 int BR_HASHDESC_ID_MASK ; 
 int BR_HASHDESC_ID_OFF ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,size_t,int /*<<< orphan*/ ) ; 
 TYPE_2__* hash_functions ; 
 char* FUNC3 (char const**,size_t*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

unsigned
FUNC5(const char *arg)
{
	unsigned r;

	r = 0;
	for (;;) {
		const char *name;
		size_t len;
		size_t u;

		name = FUNC3(&arg, &len);
		if (name == NULL) {
			break;
		}
		for (u = 0;; u ++) {
			const char *ref;

			ref = hash_functions[u].name;
			if (ref == 0) {
				FUNC1(stderr, "ERROR: unrecognised"
					" hash function name: '");
				FUNC2(name, 1, len, stderr);
				FUNC1(stderr, "'\n");
				return 0;
			}
			if (FUNC0(ref, FUNC4(ref), name, len)) {
				int id;

				id = (hash_functions[u].hclass->desc
					>> BR_HASHDESC_ID_OFF)
					& BR_HASHDESC_ID_MASK;
				r |= (unsigned)1 << id;
				break;
			}
		}
	}
	if (r == 0) {
		FUNC1(stderr, "ERROR: no hash function name provided\n");
	}
	return r;
}