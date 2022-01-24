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
struct rxrpc_connection {int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rxrpc_connection*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rxrpc_connection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct rxrpc_connection *conn,
				      struct sk_buff *skb)
{
	FUNC0("%p,%p", conn, skb);

	FUNC1(&conn->usage);
	FUNC3(&conn->rx_queue, skb);
	FUNC2(conn);
}