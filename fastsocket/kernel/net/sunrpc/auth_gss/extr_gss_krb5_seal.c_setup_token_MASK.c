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
struct xdr_netobj {scalar_t__ data; int /*<<< orphan*/  len; } ;
struct krb5_ctx {TYPE_1__* gk5e; int /*<<< orphan*/  mech_used; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int cksumlength; int /*<<< orphan*/  signalg; } ;

/* Variables and functions */
 int GSS_KRB5_TOK_HDR_LEN ; 
 int /*<<< orphan*/  KG_TOK_MIC_MSG ; 
 int /*<<< orphan*/  SEAL_ALG_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static char *
FUNC3(struct krb5_ctx *ctx, struct xdr_netobj *token)
{
	__be16 *ptr, *krb5_hdr;
	int body_size = GSS_KRB5_TOK_HDR_LEN + ctx->gk5e->cksumlength;

	token->len = FUNC2(&ctx->mech_used, body_size);

	ptr = (__be16 *)token->data;
	FUNC1(&ctx->mech_used, body_size, (unsigned char **)&ptr);

	/* ptr now at start of header described in rfc 1964, section 1.2.1: */
	krb5_hdr = ptr;
	*ptr++ = KG_TOK_MIC_MSG;
	*ptr++ = FUNC0(ctx->gk5e->signalg);
	*ptr++ = SEAL_ALG_NONE;
	*ptr++ = 0xffff;

	return (char *)krb5_hdr;
}