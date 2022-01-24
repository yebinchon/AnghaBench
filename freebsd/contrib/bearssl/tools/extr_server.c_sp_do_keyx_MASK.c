#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {TYPE_3__* sk; } ;
typedef  TYPE_4__ policy_context ;
typedef  int /*<<< orphan*/  br_ssl_server_policy_class ;
struct TYPE_11__ {size_t (* xoff ) (int /*<<< orphan*/ ,size_t*) ;int /*<<< orphan*/  (* mul ) (unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_5__ br_ec_impl ;
struct TYPE_7__ {int /*<<< orphan*/  curve; int /*<<< orphan*/  xlen; int /*<<< orphan*/  x; } ;
struct TYPE_8__ {TYPE_1__ ec; int /*<<< orphan*/  rsa; } ;
struct TYPE_9__ {int key_type; TYPE_2__ key; } ;

/* Variables and functions */
#define  BR_KEYTYPE_EC 129 
#define  BR_KEYTYPE_RSA 128 
 TYPE_5__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static uint32_t
FUNC7(const br_ssl_server_policy_class **pctx,
	unsigned char *data, size_t *len)
{
	policy_context *pc;
	uint32_t r;
	size_t xoff, xlen;

	pc = (policy_context *)pctx;
	switch (pc->sk->key_type) {
		const br_ec_impl *iec;

	case BR_KEYTYPE_RSA:
		return FUNC2(
			FUNC1(),
			&pc->sk->key.rsa, data, *len);
	case BR_KEYTYPE_EC:
		iec = FUNC0();
		r = iec->mul(data, *len, pc->sk->key.ec.x,
			pc->sk->key.ec.xlen, pc->sk->key.ec.curve);
		xoff = iec->xoff(pc->sk->key.ec.curve, &xlen);
		FUNC4(data, data + xoff, xlen);
		*len = xlen;
		return r;
	default:
		FUNC3(stderr, "ERROR: unknown private key type (%d)\n",
			(int)pc->sk->key_type);
		return 0;
	}
}