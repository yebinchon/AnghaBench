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
typedef  int u32 ;
struct sk_buff {struct sk_buff* next; } ;
struct link {struct sk_buff* defragm_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct link*,char*) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct link*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC9(struct link *l_ptr)
{
	struct sk_buff *prev = NULL;
	struct sk_buff *next = NULL;
	struct sk_buff *buf = l_ptr->defragm_buf;

	if (!buf)
		return;
	if (!FUNC7(l_ptr))
		return;
	while (buf) {
		u32 cnt = FUNC5(buf);

		next = buf->next;
		if (cnt < 4) {
			FUNC6(buf);
			prev = buf;
		} else {
			FUNC2(" Discarding incomplete long buffer\n");
			FUNC8(FUNC1(buf), "LONG:");
			FUNC4(l_ptr, "curr:");
			FUNC2("Pending long buffers:\n");
			FUNC3(l_ptr->defragm_buf);
			if (prev)
				prev->next = buf->next;
			else
				l_ptr->defragm_buf = buf->next;
			FUNC0(buf);
		}
		buf = next;
	}
}