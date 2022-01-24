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
typedef  int uint32_t ;
struct readelf {int dummy; } ;

/* Variables and functions */
#define  NT_FREEBSD_ABI_TAG 131 
#define  NT_FREEBSD_ARCH_TAG 130 
#define  NT_FREEBSD_FEATURE_CTL 129 
#define  NT_GNU_PROPERTY_TYPE_0 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct readelf*,char const*,size_t) ; 
 int /*<<< orphan*/  note_feature_ctl_flags ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(struct readelf *re, const char *name, uint32_t type,
    const char *buf, size_t sz)
{
	size_t i;
	const uint32_t *ubuf;

	/* Note data is at least 4-byte aligned. */
	if (((uintptr_t)buf & 3) != 0) {
		FUNC4("bad note data alignment");
		goto unknown;
	}
	ubuf = (const uint32_t *)(const void *)buf;

	if (FUNC3(name, "FreeBSD") == 0) {
		switch (type) {
		case NT_FREEBSD_ABI_TAG:
			if (sz != 4)
				goto unknown;
			FUNC2("   ABI tag: %u\n", ubuf[0]);
			return;
		/* NT_FREEBSD_NOINIT_TAG carries no data, treat as unknown. */
		case NT_FREEBSD_ARCH_TAG:
			if (sz != 4)
				goto unknown;
			FUNC2("   Arch tag: %x\n", ubuf[0]);
			return;
		case NT_FREEBSD_FEATURE_CTL:
			if (sz != 4)
				goto unknown;
			FUNC2("   Features:");
			FUNC0(note_feature_ctl_flags, ubuf[0]);
			return;
		}
	} else if (FUNC3(name, "GNU") == 0) {
		switch (type) {
		case NT_GNU_PROPERTY_TYPE_0:
			FUNC1(re, buf, sz);
			return;
		}
	}
unknown:
	FUNC2("   description data:");
	for (i = 0; i < sz; i++)
		FUNC2(" %02x", (unsigned char)buf[i]);
	FUNC2("\n");
}