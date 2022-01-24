#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct parport_uss720_private {int* reg; } ;
struct parport {TYPE_2__* physport; struct parport_uss720_private* private_data; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_4__ {TYPE_1__* cad; } ;
struct TYPE_3__ {unsigned long timeout; } ;

/* Variables and functions */
 int EBUSY ; 
#define  ECR_ECP 129 
#define  ECR_PPF 128 
 int ECR_PS2 ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (struct parport*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct parport*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct parport *pp, int m)
{
	struct parport_uss720_private *priv = pp->private_data;
	int mode;
	__u8 reg;

	if (FUNC0(pp, 6, &reg, GFP_KERNEL))
		return -EIO;
	/* Bits <7:5> contain the mode. */
	mode = (priv->reg[2] >> 5) & 0x7;
	if (mode == m)
		return 0;
	/* We have to go through mode 000 or 001 */
	if (mode > ECR_PS2 && m > ECR_PS2)
		if (FUNC5(pp, ECR_PS2))
			return -EIO;

	if (m <= ECR_PS2 && !(priv->reg[1] & 0x20)) {
		/* This mode resets the FIFO, so we may
		 * have to wait for it to drain first. */
		unsigned long expire = jiffies + pp->physport->cad->timeout;
		switch (mode) {
		case ECR_PPF: /* Parallel Port FIFO mode */
		case ECR_ECP: /* ECP Parallel Port mode */
			/* Poll slowly. */
			for (;;) {
				if (FUNC0(pp, 6, &reg, GFP_KERNEL))
					return -EIO;
				if (priv->reg[2] & 0x01)
					break;
				if (FUNC4 (jiffies, expire))
					/* The FIFO is stuck. */
					return -EBUSY;
				FUNC1(10);
				if (FUNC3 (current))
					break;
			}
		}
	}
	/* Set the mode. */
	if (FUNC2(pp, 6, m << 5, GFP_KERNEL))
		return -EIO;
	if (FUNC0(pp, 6, &reg, GFP_KERNEL))
		return -EIO;
	return 0;
}