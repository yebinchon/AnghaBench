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
struct carlfw {int dummy; } ;
struct carl9170fw_fix_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  length; } ;
struct carl9170fw_fix_desc {int /*<<< orphan*/ * data; TYPE_1__ head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct carl9170fw_fix_desc*) ; 
 scalar_t__ FUNC1 (struct carl9170fw_fix_desc*) ; 
 struct carl9170fw_fix_desc* FUNC2 (struct carlfw*,TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct carl9170fw_fix_entry*,int) ; 

__attribute__((used)) static int
FUNC5(struct carlfw *fw, struct carl9170fw_fix_desc *fix,
		 struct carl9170fw_fix_entry *fix_entry)
{
	unsigned int entry;

	fix = FUNC2(fw, &fix->head, sizeof(*fix_entry));
	if (FUNC0(fix))
		return (int) FUNC1(fix);

	entry = (FUNC3(fix->head.length) - sizeof(*fix)) /
		sizeof(*fix_entry) - 1;

	FUNC4(&fix->data[entry], fix_entry, sizeof(*fix_entry));
	return 0;
}