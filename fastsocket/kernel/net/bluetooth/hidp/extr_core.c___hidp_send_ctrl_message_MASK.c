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
struct hidp_session {int /*<<< orphan*/  ctrl_transmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hidp_session*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 unsigned char* FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct hidp_session *session,
			unsigned char hdr, unsigned char *data, int size)
{
	struct sk_buff *skb;

	FUNC0("session %p data %p size %d", session, data, size);

	if (!(skb = FUNC2(size + 1, GFP_ATOMIC))) {
		FUNC1("Can't allocate memory for new frame");
		return -ENOMEM;
	}

	*FUNC4(skb, 1) = hdr;
	if (data && size > 0)
		FUNC3(FUNC4(skb, size), data, size);

	FUNC5(&session->ctrl_transmit, skb);

	return 0;
}