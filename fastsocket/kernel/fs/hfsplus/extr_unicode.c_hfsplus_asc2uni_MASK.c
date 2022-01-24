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
typedef  scalar_t__ wchar_t ;
typedef  scalar_t__ u16 ;
struct super_block {int dummy; } ;
struct hfsplus_unistr {void* length; void** unicode; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 scalar_t__ HFSPLUS_MAX_STRLEN ; 
 TYPE_1__ FUNC0 (struct super_block*) ; 
 int HFSPLUS_SB_NODECOMPOSE ; 
 int FUNC1 (struct super_block*,char const*,int,scalar_t__*) ; 
 void* FUNC2 (scalar_t__) ; 
 scalar_t__* FUNC3 (scalar_t__,int*) ; 

int FUNC4(struct super_block *sb, struct hfsplus_unistr *ustr,
		    const char *astr, int len)
{
	int size, dsize, decompose;
	u16 *dstr, outlen = 0;
	wchar_t c;

	decompose = !(FUNC0(sb).flags & HFSPLUS_SB_NODECOMPOSE);
	while (outlen < HFSPLUS_MAX_STRLEN && len > 0) {
		size = FUNC1(sb, astr, len, &c);

		if (decompose && (dstr = FUNC3(c, &dsize))) {
			if (outlen + dsize > HFSPLUS_MAX_STRLEN)
				break;
			do {
				ustr->unicode[outlen++] = FUNC2(*dstr++);
			} while (--dsize > 0);
		} else
			ustr->unicode[outlen++] = FUNC2(c);

		astr += size;
		len -= size;
	}
	ustr->length = FUNC2(outlen);
	if (len > 0)
		return -ENAMETOOLONG;
	return 0;
}