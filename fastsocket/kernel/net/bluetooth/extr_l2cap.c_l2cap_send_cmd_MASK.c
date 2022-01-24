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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct l2cap_conn {int /*<<< orphan*/  hcon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static inline int FUNC3(struct l2cap_conn *conn, u8 ident, u8 code, u16 len, void *data)
{
	struct sk_buff *skb = FUNC2(conn, code, ident, len, data);

	FUNC0("code 0x%2.2x", code);

	if (!skb)
		return -ENOMEM;

	return FUNC1(conn->hcon, skb, 0);
}