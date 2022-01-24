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
typedef  size_t uint32_t ;
struct TYPE_2__ {scalar_t__ e_machine; } ;
struct readelf {TYPE_1__ ehdr; } ;

/* Variables and functions */
 scalar_t__ EM_X86_64 ; 
 size_t GNU_PROPERTY_HIPROC ; 
 size_t GNU_PROPERTY_LOPROC ; 
#define  GNU_PROPERTY_X86_FEATURE_1_AND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/  gnu_property_x86_feature_1_and_bits ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (size_t,int) ; 

__attribute__((used)) static void
FUNC3(struct readelf *re, const char *buf, size_t sz)
{
	size_t i;
	uint32_t type, prop_sz;

	FUNC1("      Properties: ");
	while (sz > 0) {
		if (sz < 8)
			goto bad;

		type = *(const uint32_t *)(const void *)buf;
		prop_sz = *(const uint32_t *)(const void *)(buf + 4);
		buf += 8;
		sz -= 8;

		if (prop_sz > sz)
			goto bad;

		if (type >= GNU_PROPERTY_LOPROC &&
		    type <= GNU_PROPERTY_HIPROC) {
			if (re->ehdr.e_machine != EM_X86_64) {
				FUNC1("machine type %x unknown\n",
				    re->ehdr.e_machine);
				goto unknown;
			}
			switch (type) {
			case GNU_PROPERTY_X86_FEATURE_1_AND:
				FUNC1("x86 features:");
				if (prop_sz != 4)
					goto bad;
				FUNC0(gnu_property_x86_feature_1_and_bits,
				    *(const uint32_t *)(const void *)buf);
				break;
			}
		}

		buf += FUNC2(prop_sz, 8);
		sz -= FUNC2(prop_sz, 8);
	}
	return;
bad:
	FUNC1("corrupt GNU property\n");
unknown:
	FUNC1("remaining description data:");
	for (i = 0; i < sz; i++)
		FUNC1(" %02x", (unsigned char)buf[i]);
	FUNC1("\n");
}