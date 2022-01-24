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
typedef  int /*<<< orphan*/  uint8_t ;
struct ustr {int dummy; } ;
struct super_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_nls_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDF_FLAG_NLS_MAP ; 
 int /*<<< orphan*/  UDF_FLAG_UTF8 ; 
 int /*<<< orphan*/  UDF_NAME_LEN ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ustr*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct ustr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ustr*,int /*<<< orphan*/  const*,int) ; 

int FUNC5(struct super_block *sb, const uint8_t *sname,
		     uint8_t *dname, int flen)
{
	struct ustr unifilename;
	int namelen;

	if (!FUNC4(&unifilename, sname, flen))
		return 0;

	if (FUNC0(sb, UDF_FLAG_UTF8)) {
		namelen = FUNC3(dname, &unifilename, UDF_NAME_LEN);
		if (!namelen)
			return 0;
	} else if (FUNC0(sb, UDF_FLAG_NLS_MAP)) {
		namelen = FUNC2(FUNC1(sb)->s_nls_map, dname,
					&unifilename, UDF_NAME_LEN);
		if (!namelen)
			return 0;
	} else
		return 0;

	return namelen;
}