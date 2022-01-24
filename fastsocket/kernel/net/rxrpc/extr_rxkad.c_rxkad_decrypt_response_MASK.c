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
struct rxrpc_crypt {int /*<<< orphan*/  x; int /*<<< orphan*/ * n; } ;
struct rxrpc_connection {int dummy; } ;
struct rxkad_response {int /*<<< orphan*/  encrypted; } ;
struct blkcipher_desc {scalar_t__ flags; int /*<<< orphan*/  info; int /*<<< orphan*/ * tfm; } ;
typedef  int /*<<< orphan*/  iv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rxrpc_crypt*,struct rxrpc_crypt const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rxkad_ci ; 
 int /*<<< orphan*/  rxkad_ci_mutex ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11(struct rxrpc_connection *conn,
				   struct rxkad_response *resp,
				   const struct rxrpc_crypt *session_key)
{
	struct blkcipher_desc desc;
	struct scatterlist sg[2];
	struct rxrpc_crypt iv;

	FUNC2(",,%08x%08x",
	       FUNC9(session_key->n[0]), FUNC9(session_key->n[1]));

	FUNC0(rxkad_ci != NULL);

	FUNC7(&rxkad_ci_mutex);
	if (FUNC5(rxkad_ci, session_key->x,
				    sizeof(*session_key)) < 0)
		FUNC1();

	FUNC6(&iv, session_key, sizeof(iv));
	desc.tfm = rxkad_ci;
	desc.info = iv.x;
	desc.flags = 0;

	FUNC10(sg, &resp->encrypted, sizeof(resp->encrypted));
	FUNC4(&desc, sg, sg, sizeof(resp->encrypted));
	FUNC8(&rxkad_ci_mutex);

	FUNC3("");
}