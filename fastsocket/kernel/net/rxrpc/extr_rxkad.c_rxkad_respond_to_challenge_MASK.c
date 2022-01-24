#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  serial; } ;
struct rxrpc_skb_priv {TYPE_4__ hdr; } ;
struct rxrpc_key_token {TYPE_5__* kad; } ;
struct rxrpc_connection {scalar_t__ security_level; scalar_t__ security_ix; TYPE_2__** channels; int /*<<< orphan*/  cid; int /*<<< orphan*/  epoch; TYPE_7__* key; int /*<<< orphan*/  debug_id; } ;
struct TYPE_11__ {void* level; void* inc_nonce; int /*<<< orphan*/ * call_id; void* securityIndex; int /*<<< orphan*/  cid; int /*<<< orphan*/  epoch; } ;
struct rxkad_response {void* ticket_len; void* kvno; TYPE_3__ encrypted; scalar_t__ version; } ;
struct rxkad_challenge {int /*<<< orphan*/  min_level; int /*<<< orphan*/  nonce; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  challenge ;
struct TYPE_9__ {struct rxrpc_key_token* data; } ;
struct TYPE_14__ {TYPE_1__ payload; } ;
struct TYPE_13__ {scalar_t__ kvno; scalar_t__ ticket_len; } ;
struct TYPE_10__ {int /*<<< orphan*/  call_id; } ;

/* Variables and functions */
 int EPROTO ; 
 scalar_t__ RXKADEXPIRED ; 
 scalar_t__ RXKADINCONSISTENCY ; 
 scalar_t__ RXKADLEVELFAIL ; 
 scalar_t__ RXKADPACKETSHORT ; 
 scalar_t__ RXKAD_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (struct rxkad_response*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rxkad_response*) ; 
 int /*<<< orphan*/  FUNC9 (struct rxrpc_connection*,struct rxkad_response*,TYPE_5__*) ; 
 int FUNC10 (struct rxrpc_connection*,TYPE_4__*,struct rxkad_response*,TYPE_5__*) ; 
 struct rxrpc_skb_priv* FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,struct rxkad_challenge*,int) ; 

__attribute__((used)) static int FUNC13(struct rxrpc_connection *conn,
				      struct sk_buff *skb,
				      u32 *_abort_code)
{
	const struct rxrpc_key_token *token;
	struct rxkad_challenge challenge;
	struct rxkad_response resp
		__attribute__((aligned(8))); /* must be aligned for crypto */
	struct rxrpc_skb_priv *sp;
	u32 version, nonce, min_level, abort_code;
	int ret;

	FUNC0("{%d,%x}", conn->debug_id, FUNC4(conn->key));

	if (!conn->key) {
		FUNC1(" = -EPROTO [no key]");
		return -EPROTO;
	}

	ret = FUNC5(conn->key);
	if (ret < 0) {
		*_abort_code = RXKADEXPIRED;
		return ret;
	}

	abort_code = RXKADPACKETSHORT;
	sp = FUNC11(skb);
	if (FUNC12(skb, 0, &challenge, sizeof(challenge)) < 0)
		goto protocol_error;

	version = FUNC7(challenge.version);
	nonce = FUNC7(challenge.nonce);
	min_level = FUNC7(challenge.min_level);

	FUNC2("Rx CHALLENGE %%%u { v=%u n=%u ml=%u }",
	       FUNC7(sp->hdr.serial), version, nonce, min_level);

	abort_code = RXKADINCONSISTENCY;
	if (version != RXKAD_VERSION)
		goto protocol_error;

	abort_code = RXKADLEVELFAIL;
	if (conn->security_level < min_level)
		goto protocol_error;

	token = conn->key->payload.data;

	/* build the response packet */
	FUNC6(&resp, 0, sizeof(resp));

	resp.version = RXKAD_VERSION;
	resp.encrypted.epoch = conn->epoch;
	resp.encrypted.cid = conn->cid;
	resp.encrypted.securityIndex = FUNC3(conn->security_ix);
	resp.encrypted.call_id[0] =
		(conn->channels[0] ? conn->channels[0]->call_id : 0);
	resp.encrypted.call_id[1] =
		(conn->channels[1] ? conn->channels[1]->call_id : 0);
	resp.encrypted.call_id[2] =
		(conn->channels[2] ? conn->channels[2]->call_id : 0);
	resp.encrypted.call_id[3] =
		(conn->channels[3] ? conn->channels[3]->call_id : 0);
	resp.encrypted.inc_nonce = FUNC3(nonce + 1);
	resp.encrypted.level = FUNC3(conn->security_level);
	resp.kvno = FUNC3(token->kad->kvno);
	resp.ticket_len = FUNC3(token->kad->ticket_len);

	/* calculate the response checksum and then do the encryption */
	FUNC8(&resp);
	FUNC9(conn, &resp, token->kad);
	return FUNC10(conn, &sp->hdr, &resp, token->kad);

protocol_error:
	*_abort_code = abort_code;
	FUNC1(" = -EPROTO [%d]", abort_code);
	return -EPROTO;
}