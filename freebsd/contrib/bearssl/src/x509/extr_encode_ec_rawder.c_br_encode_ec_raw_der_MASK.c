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
typedef  int /*<<< orphan*/  br_ec_public_key ;
typedef  int /*<<< orphan*/  br_ec_private_key ;

/* Variables and functions */
 size_t FUNC0 (void*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

size_t
FUNC1(void *dest,
	const br_ec_private_key *sk, const br_ec_public_key *pk)
{
	return FUNC0(dest, sk, pk, 1);
}