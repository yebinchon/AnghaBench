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
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALG_CCMP_KEY_LEN ; 
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_cipher*) ; 
 struct crypto_cipher* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_cipher*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

struct crypto_cipher *FUNC3(const u8 key[])
{
	struct crypto_cipher *tfm;

	tfm = FUNC1("aes", 0, CRYPTO_ALG_ASYNC);
	if (!FUNC0(tfm))
		FUNC2(tfm, key, ALG_CCMP_KEY_LEN);

	return tfm;
}