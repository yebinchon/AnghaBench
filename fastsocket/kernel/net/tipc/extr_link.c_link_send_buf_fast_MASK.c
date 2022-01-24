#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  bearer_congs; } ;
struct link {struct sk_buff* next_out; TYPE_1__ stats; TYPE_2__* b_ptr; scalar_t__ unacked_window; int /*<<< orphan*/  media_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  cong_links; } ;

/* Variables and functions */
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct link*,struct sk_buff*,struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct link*) ; 
 scalar_t__ FUNC5 (struct link*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,char*) ; 
 scalar_t__ FUNC9 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct link*) ; 
 int FUNC11 (TYPE_2__*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct link*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC13(struct link *l_ptr, struct sk_buff *buf,
			      u32 *used_max_pkt)
{
	struct tipc_msg *msg = FUNC0(buf);
	int res = FUNC7(msg);

	if (FUNC2(!FUNC4(l_ptr))) {
		if (FUNC2(FUNC9(msg) <= FUNC5(l_ptr))) {
			if (FUNC2(FUNC6(&l_ptr->b_ptr->cong_links))) {
				FUNC3(l_ptr, buf, msg);
				if (FUNC2(FUNC11(l_ptr->b_ptr, buf,
							    &l_ptr->media_addr))) {
					l_ptr->unacked_window = 0;
					FUNC8(msg,"SENT_FAST:");
					return res;
				}
				FUNC1("failed sent fast...\n");
				FUNC10(l_ptr->b_ptr, l_ptr);
				l_ptr->stats.bearer_congs++;
				l_ptr->next_out = buf;
				return res;
			}
		}
		else
			*used_max_pkt = FUNC5(l_ptr);
	}
	return FUNC12(l_ptr, buf);  /* All other cases */
}