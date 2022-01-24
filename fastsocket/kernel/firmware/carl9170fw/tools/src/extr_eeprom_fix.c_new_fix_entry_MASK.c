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
typedef  int /*<<< orphan*/  uint8_t ;
struct carlfw {int dummy; } ;
struct carl9170fw_fix_entry {int dummy; } ;
struct carl9170fw_fix_desc {int /*<<< orphan*/  head; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170FW_FIX_DESC_CUR_VER ; 
 int /*<<< orphan*/  CARL9170FW_FIX_DESC_MIN_VER ; 
 int ENOMEM ; 
 scalar_t__ FIX_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct carlfw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 struct carl9170fw_fix_desc* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct carl9170fw_fix_entry*,int) ; 

__attribute__((used)) static int
FUNC5(struct carlfw *fw, struct carl9170fw_fix_entry *fix_entry)
{
	struct carl9170fw_fix_desc *fix;
	unsigned int len;

	len = sizeof(*fix) + sizeof(*fix_entry);
	fix = FUNC3(len);
	if (!fix)
		return -ENOMEM;

	FUNC0(&fix->head, (uint8_t *) FIX_MAGIC,
			      FUNC2(len),
			      CARL9170FW_FIX_DESC_MIN_VER,
			      CARL9170FW_FIX_DESC_CUR_VER);

	FUNC4(&fix->data[0], fix_entry, sizeof(*fix_entry));

	return FUNC1(fw, &fix->head);
}