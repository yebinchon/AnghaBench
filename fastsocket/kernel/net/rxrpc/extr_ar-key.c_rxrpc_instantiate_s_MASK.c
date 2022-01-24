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
struct TYPE_2__ {struct crypto_blkcipher* data; } ;
struct key {TYPE_1__ payload; int /*<<< orphan*/  type_data; } ;
struct crypto_blkcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct crypto_blkcipher*) ; 
 int FUNC2 (struct crypto_blkcipher*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct crypto_blkcipher* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct crypto_blkcipher*,void const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct key*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void const*,int) ; 

__attribute__((used)) static int FUNC9(struct key *key, const void *data,
			       size_t datalen)
{
	struct crypto_blkcipher *ci;

	FUNC3("{%x},,%zu", FUNC7(key), datalen);

	if (datalen != 8)
		return -EINVAL;

	FUNC8(&key->type_data, data, 8);

	ci = FUNC5("pcbc(des)", 0, CRYPTO_ALG_ASYNC);
	if (FUNC1(ci)) {
		FUNC4(" = %ld", FUNC2(ci));
		return FUNC2(ci);
	}

	if (FUNC6(ci, data, 8) < 0)
		FUNC0();

	key->payload.data = ci;
	FUNC4(" = 0");
	return 0;
}