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
struct xfrm_state {TYPE_1__* aead; struct esp_data* data; } ;
struct esp_data {struct crypto_aead* aead; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int alg_key_len; int alg_icv_len; int /*<<< orphan*/  alg_key; int /*<<< orphan*/  alg_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (struct crypto_aead*,int) ; 
 int FUNC3 (struct crypto_aead*,int /*<<< orphan*/ ,int) ; 
 struct crypto_aead* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct xfrm_state *x)
{
	struct esp_data *esp = x->data;
	struct crypto_aead *aead;
	int err;

	aead = FUNC4(x->aead->alg_name, 0, 0);
	err = FUNC1(aead);
	if (FUNC0(aead))
		goto error;

	esp->aead = aead;

	err = FUNC3(aead, x->aead->alg_key,
				 (x->aead->alg_key_len + 7) / 8);
	if (err)
		goto error;

	err = FUNC2(aead, x->aead->alg_icv_len / 8);
	if (err)
		goto error;

error:
	return err;
}