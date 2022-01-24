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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_H_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void FUNC9(struct sk_buff *buf)
{
	u32 msgcount = FUNC5(FUNC3(buf));
	u32 pos = INT_H_SIZE;
	struct sk_buff *obuf;

	FUNC4(FUNC3(buf), "<BNDL<: ");
	while (msgcount--) {
		obuf = FUNC2(buf, pos);
		if (obuf == NULL) {
			FUNC8("Link unable to unbundle message(s)\n");
			break;
		}
		pos += FUNC0(FUNC6(FUNC3(obuf)));
		FUNC4(FUNC3(obuf), "     /");
		FUNC7(obuf);
	}
	FUNC1(buf);
}