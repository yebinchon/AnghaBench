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
struct ustr {int /*<<< orphan*/  u_len; int /*<<< orphan*/  u_name; } ;
struct super_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_nls_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  UDF_FLAG_NLS_MAP ; 
 int /*<<< orphan*/  UDF_FLAG_UTF8 ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct ustr*) ; 
 struct ustr* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ustr*,struct ustr*) ; 
 int /*<<< orphan*/  FUNC5 (struct ustr*,struct ustr*) ; 
 scalar_t__ FUNC6 (struct ustr*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct super_block *sb, uint8_t *sname, uint8_t *dname,
		     int flen)
{
	struct ustr *filename, *unifilename;
	int len = 0;

	filename = FUNC3(sizeof(struct ustr), GFP_NOFS);
	if (!filename)
		return 0;

	unifilename = FUNC3(sizeof(struct ustr), GFP_NOFS);
	if (!unifilename)
		goto out1;

	if (FUNC6(unifilename, sname, flen))
		goto out2;

	if (FUNC0(sb, UDF_FLAG_UTF8)) {
		if (!FUNC5(filename, unifilename)) {
			FUNC7("Failed in udf_get_filename: sname = %s\n",
				  sname);
			goto out2;
		}
	} else if (FUNC0(sb, UDF_FLAG_NLS_MAP)) {
		if (!FUNC4(FUNC1(sb)->s_nls_map, filename,
				  unifilename)) {
			FUNC7("Failed in udf_get_filename: sname = %s\n",
				  sname);
			goto out2;
		}
	} else
		goto out2;

	len = FUNC8(dname, filename->u_name, filename->u_len,
				     unifilename->u_name, unifilename->u_len);
out2:
	FUNC2(unifilename);
out1:
	FUNC2(filename);
	return len;
}