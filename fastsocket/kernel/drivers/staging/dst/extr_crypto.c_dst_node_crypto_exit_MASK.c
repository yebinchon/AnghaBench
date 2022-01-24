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
struct dst_crypto_ctl {scalar_t__* hash_algo; scalar_t__* cipher_algo; } ;
struct dst_node {int /*<<< orphan*/  cipher_key; int /*<<< orphan*/  hash_key; struct dst_crypto_ctl crypto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct dst_node *n)
{
	struct dst_crypto_ctl *ctl = &n->crypto;

	if (ctl->cipher_algo[0] || ctl->hash_algo[0]) {
		FUNC0(n->hash_key);
		FUNC0(n->cipher_key);
	}
}