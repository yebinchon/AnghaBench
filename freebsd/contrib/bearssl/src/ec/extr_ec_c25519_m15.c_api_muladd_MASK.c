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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */

__attribute__((used)) static uint32_t
FUNC0(unsigned char *A, const unsigned char *B, size_t len,
	const unsigned char *x, size_t xlen,
	const unsigned char *y, size_t ylen, int curve)
{
	/*
	 * We don't implement this method, since it is used for ECDSA
	 * only, and there is no ECDSA over Curve25519 (which instead
	 * uses EdDSA).
	 */
	(void)A;
	(void)B;
	(void)len;
	(void)x;
	(void)xlen;
	(void)y;
	(void)ylen;
	(void)curve;
	return 0;
}