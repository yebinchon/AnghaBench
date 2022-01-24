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
struct scatterlist {int dummy; } ;
struct rxrpc_crypt {int /*<<< orphan*/  x; } ;
struct rxrpc_connection {int /*<<< orphan*/  cipher; } ;
struct rxkad_response {int /*<<< orphan*/  encrypted; } ;
struct rxkad_key {int /*<<< orphan*/  session_key; } ;
struct blkcipher_desc {scalar_t__ flags; int /*<<< orphan*/  info; int /*<<< orphan*/  tfm; } ;
typedef  int /*<<< orphan*/  iv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_crypt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct rxrpc_connection *conn,
				   struct rxkad_response *resp,
				   const struct rxkad_key *s2)
{
	struct blkcipher_desc desc;
	struct rxrpc_crypt iv;
	struct scatterlist sg[2];

	/* continue encrypting from where we left off */
	FUNC1(&iv, s2->session_key, sizeof(iv));
	desc.tfm = conn->cipher;
	desc.info = iv.x;
	desc.flags = 0;

	FUNC2(sg, &resp->encrypted, sizeof(resp->encrypted));
	FUNC0(&desc, sg, sg, sizeof(resp->encrypted));
}