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
struct sca3000_state {int bpse; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int SCA3000_INT_MASK_ACTIVE_LOW ; 
 int SCA3000_INT_MASK_PROT_MASK ; 
 int SCA3000_MD_CTRL_PROT_MASK ; 
 int SCA3000_MODE_PROT_MASK ; 
 int SCA3000_OUT_CTRL_BUF_DIV_4 ; 
 int SCA3000_OUT_CTRL_BUF_X_EN ; 
 int SCA3000_OUT_CTRL_BUF_Y_EN ; 
 int SCA3000_OUT_CTRL_BUF_Z_EN ; 
 int SCA3000_OUT_CTRL_PROT_MASK ; 
 int /*<<< orphan*/  SCA3000_REG_ADDR_INT_MASK ; 
 int /*<<< orphan*/  SCA3000_REG_ADDR_INT_STATUS ; 
 int /*<<< orphan*/  SCA3000_REG_ADDR_MODE ; 
 int /*<<< orphan*/  SCA3000_REG_CTRL_SEL_MD_CTRL ; 
 int /*<<< orphan*/  SCA3000_REG_CTRL_SEL_OUT_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sca3000_state*,int /*<<< orphan*/ ,int**) ; 
 int FUNC4 (struct sca3000_state*,int /*<<< orphan*/ ,int**,int) ; 
 int FUNC5 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct sca3000_state *st)
{
	int ret;
	u8 *rx;

	FUNC1(&st->lock);
	/* Ensure all interrupts have been acknowledged */
	ret = FUNC4(st, SCA3000_REG_ADDR_INT_STATUS, &rx, 1);
	if (ret)
		goto error_ret;
	FUNC0(rx);

	/* Turn off all motion detection channels */
	ret = FUNC3(st,
				    SCA3000_REG_CTRL_SEL_MD_CTRL,
				    &rx);
	if (ret)
		goto error_ret;
	ret = FUNC5(st,
				     SCA3000_REG_CTRL_SEL_MD_CTRL,
				     rx[1] & SCA3000_MD_CTRL_PROT_MASK);
	FUNC0(rx);
	if (ret)
		goto error_ret;

	/* Disable ring buffer */
	FUNC3(st,
			      SCA3000_REG_CTRL_SEL_OUT_CTRL,
			      &rx);
	/* Frequency of ring buffer sampling deliberately restricted to make
	 * debugging easier - add control of this later */
	ret = FUNC5(st,
				     SCA3000_REG_CTRL_SEL_OUT_CTRL,
				     (rx[1] & SCA3000_OUT_CTRL_PROT_MASK)
				     | SCA3000_OUT_CTRL_BUF_X_EN
				     | SCA3000_OUT_CTRL_BUF_Y_EN
				     | SCA3000_OUT_CTRL_BUF_Z_EN
				     | SCA3000_OUT_CTRL_BUF_DIV_4);
	FUNC0(rx);

	if (ret)
		goto error_ret;
	/* Enable interrupts, relevant to mode and set up as active low */
	ret = FUNC4(st,
			  SCA3000_REG_ADDR_INT_MASK,
			  &rx, 1);
	if (ret)
		goto error_ret;
	ret = FUNC6(st,
				SCA3000_REG_ADDR_INT_MASK,
				(rx[1] & SCA3000_INT_MASK_PROT_MASK)
				| SCA3000_INT_MASK_ACTIVE_LOW);
	FUNC0(rx);
	if (ret)
		goto error_ret;
	/* Select normal measurement mode, free fall off, ring off */
	/* Ring in 12 bit mode - it is fine to overwrite reserved bits 3,5
	 * as that occurs in one of the example on the datasheet */
	ret = FUNC4(st,
			  SCA3000_REG_ADDR_MODE,
			  &rx, 1);
	if (ret)
		goto error_ret;
	ret = FUNC6(st,
				SCA3000_REG_ADDR_MODE,
				(rx[1] & SCA3000_MODE_PROT_MASK));
	FUNC0(rx);
	st->bpse = 11;

error_ret:
	FUNC2(&st->lock);
	return ret;
}