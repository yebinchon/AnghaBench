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
struct asn1_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct asn1_ctx*,unsigned char*) ; 

__attribute__((used)) static unsigned char FUNC1(struct asn1_ctx *ctx, unsigned int *tag)
{
	unsigned char ch;

	*tag = 0;

	do
	{
		if (!FUNC0(ctx, &ch))
			return 0;
		*tag <<= 7;
		*tag |= ch & 0x7F;
	} while ((ch & 0x80) == 0x80);
	return 1;
}