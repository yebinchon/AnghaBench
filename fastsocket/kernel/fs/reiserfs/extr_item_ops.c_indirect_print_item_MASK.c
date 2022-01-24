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
struct item_head {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int FUNC0 (struct item_head*) ; 
 int UNFM_P_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct item_head *ih, char *item)
{
	int j;
	__le32 *unp;
	__u32 prev = INT_MAX;
	int num = 0;

	unp = (__le32 *) item;

	if (FUNC2(ih) % UNFM_P_SIZE)
		FUNC5(NULL, "reiserfs-16102", "invalid item len");

	FUNC4("%d pointers\n[ ", (int)FUNC0(ih));
	for (j = 0; j < FUNC0(ih); j++) {
		if (FUNC6(prev, &num, FUNC1(unp, j))) {
			FUNC3(prev, num);
			FUNC7(&prev, &num, FUNC1(unp, j));
		}
	}
	FUNC3(prev, num);
	FUNC4("]\n");
}