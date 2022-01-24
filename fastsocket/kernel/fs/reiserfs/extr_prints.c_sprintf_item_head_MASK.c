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
struct item_head {int /*<<< orphan*/  ih_key; } ;

/* Variables and functions */
 scalar_t__ KEY_FORMAT_3_6 ; 
 int FUNC0 (struct item_head*) ; 
 int FUNC1 (struct item_head*) ; 
 int FUNC2 (struct item_head*) ; 
 scalar_t__ FUNC3 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(char *buf, struct item_head *ih)
{
	if (ih) {
		FUNC6(buf,
		       (FUNC3(ih) == KEY_FORMAT_3_6) ? "*3.6* " : "*3.5*");
		FUNC5(buf + FUNC7(buf), &(ih->ih_key));
		FUNC4(buf + FUNC7(buf), ", item_len %d, item_location %d, "
			"free_space(entry_count) %d",
			FUNC1(ih), FUNC2(ih), FUNC0(ih));
	} else
		FUNC4(buf, "[NULL]");
}