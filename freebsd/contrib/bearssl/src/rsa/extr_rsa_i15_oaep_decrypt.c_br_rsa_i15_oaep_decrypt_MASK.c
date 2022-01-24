#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int n_bitlen; } ;
typedef  TYPE_1__ br_rsa_private_key ;
typedef  int /*<<< orphan*/  br_hash_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,void const*,size_t,void*,size_t*) ; 

uint32_t
FUNC2(const br_hash_class *dig,
	const void *label, size_t label_len,
	const br_rsa_private_key *sk, void *data, size_t *len)
{
	uint32_t r;

	if (*len != ((sk->n_bitlen + 7) >> 3)) {
		return 0;
	}
	r = FUNC0(data, sk);
	r &= FUNC1(dig, label, label_len, data, len);
	return r;
}