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
typedef  int u8 ;
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_cipher*,int*,int*) ; 

__attribute__((used)) static void FUNC1(struct crypto_cipher *tfm, u8 *scratch, u8 *a)
{
	int i;
	u8 *b_0, *aad, *b, *s_0;

	b_0 = scratch + 3 * AES_BLOCK_SIZE;
	aad = scratch + 4 * AES_BLOCK_SIZE;
	b = scratch;
	s_0 = scratch + AES_BLOCK_SIZE;

	FUNC0(tfm, b, b_0);

	/* Extra Authenticate-only data (always two AES blocks) */
	for (i = 0; i < AES_BLOCK_SIZE; i++)
		aad[i] ^= b[i];
	FUNC0(tfm, b, aad);

	aad += AES_BLOCK_SIZE;

	for (i = 0; i < AES_BLOCK_SIZE; i++)
		aad[i] ^= b[i];
	FUNC0(tfm, a, aad);

	/* Mask out bits from auth-only-b_0 */
	b_0[0] &= 0x07;

	/* S_0 is used to encrypt T (= MIC) */
	b_0[14] = 0;
	b_0[15] = 0;
	FUNC0(tfm, s_0, b_0);
}