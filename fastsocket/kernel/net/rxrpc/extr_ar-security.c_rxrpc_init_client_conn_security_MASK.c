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
struct rxrpc_security {int (* init_connection_security ) (struct rxrpc_connection*) ;} ;
struct rxrpc_key_token {int /*<<< orphan*/  security_index; } ;
struct rxrpc_connection {struct rxrpc_security* security; int /*<<< orphan*/  debug_id; struct key* key; } ;
struct TYPE_2__ {struct rxrpc_key_token* data; } ;
struct key {TYPE_1__ payload; } ;

/* Variables and functions */
 int EKEYREJECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct key*) ; 
 int FUNC3 (struct key*) ; 
 struct rxrpc_security* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rxrpc_security*) ; 
 int FUNC6 (struct rxrpc_connection*) ; 

int FUNC7(struct rxrpc_connection *conn)
{
	struct rxrpc_key_token *token;
	struct rxrpc_security *sec;
	struct key *key = conn->key;
	int ret;

	FUNC0("{%d},{%x}", conn->debug_id, FUNC2(key));

	if (!key)
		return 0;

	ret = FUNC3(key);
	if (ret < 0)
		return ret;

	if (!key->payload.data)
		return -EKEYREJECTED;
	token = key->payload.data;

	sec = FUNC4(token->security_index);
	if (!sec)
		return -EKEYREJECTED;
	conn->security = sec;

	ret = conn->security->init_connection_security(conn);
	if (ret < 0) {
		FUNC5(conn->security);
		conn->security = NULL;
		return ret;
	}

	FUNC1(" = 0");
	return 0;
}