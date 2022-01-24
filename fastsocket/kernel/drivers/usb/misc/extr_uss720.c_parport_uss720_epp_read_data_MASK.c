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
struct parport_uss720_private {int* reg; } ;
struct parport {struct parport_uss720_private* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECR_EPP ; 
 int /*<<< orphan*/  ECR_PS2 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct parport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*) ; 
 scalar_t__ FUNC2 (struct parport*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC3(struct parport *pp, void *buf, size_t length, int flags)
{
	struct parport_uss720_private *priv = pp->private_data;	
	size_t got = 0;

	if (FUNC0(pp, ECR_EPP))
		return 0;
	for (; got < length; got++) {
		if (FUNC2(pp, 4, (char *)buf, GFP_KERNEL))
			break;
		buf++;
		if (priv->reg[0] & 0x01) {
			FUNC1(pp);
			break;
		}
	}
	FUNC0(pp, ECR_PS2);
	return got;
}