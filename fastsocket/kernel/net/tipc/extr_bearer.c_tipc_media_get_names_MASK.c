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
struct sk_buff {int dummy; } ;
struct media {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int MAX_MEDIA ; 
 int /*<<< orphan*/  TIPC_MAX_MEDIA_NAME ; 
 int /*<<< orphan*/  TIPC_TLV_MEDIA_NAME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int media_count ; 
 struct media* media_list ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sk_buff* FUNC5 (int) ; 
 int /*<<< orphan*/  tipc_net_lock ; 

struct sk_buff *FUNC6(void)
{
	struct sk_buff *buf;
	struct media *m_ptr;
	int i;

	buf = FUNC5(MAX_MEDIA * FUNC0(TIPC_MAX_MEDIA_NAME));
	if (!buf)
		return NULL;

	FUNC1(&tipc_net_lock);
	for (i = 0, m_ptr = media_list; i < media_count; i++, m_ptr++) {
		FUNC4(buf, TIPC_TLV_MEDIA_NAME, m_ptr->name,
				    FUNC3(m_ptr->name) + 1);
	}
	FUNC2(&tipc_net_lock);
	return buf;
}