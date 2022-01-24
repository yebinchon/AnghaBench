#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  br_hmac_key_context ;
struct TYPE_4__ {int /*<<< orphan*/  hmac_ctx; } ;
struct TYPE_5__ {TYPE_1__ u; int /*<<< orphan*/  dig_len; } ;
typedef  TYPE_2__ br_hkdf_context ;
typedef  int /*<<< orphan*/  br_hash_class ;

/* Variables and functions */
 void const* BR_HKDF_NO_SALT ; 
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 

void
FUNC5(br_hkdf_context *hc, const br_hash_class *digest_vtable,
	const void *salt, size_t salt_len)
{
	br_hmac_key_context kc;
	unsigned char tmp[64];

	if (salt == BR_HKDF_NO_SALT) {
		salt = tmp;
		salt_len = FUNC0(digest_vtable);
		FUNC4(tmp, 0, salt_len);
	}
	FUNC2(&kc, digest_vtable, salt, salt_len);
	FUNC1(&hc->u.hmac_ctx, &kc, 0);
	hc->dig_len = FUNC3(&hc->u.hmac_ctx);
}