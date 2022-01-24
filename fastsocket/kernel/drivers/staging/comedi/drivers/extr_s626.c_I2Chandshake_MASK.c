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
typedef  int uint32_t ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int I2C_BUSY ; 
 int I2C_ERR ; 
 int /*<<< orphan*/  MC2_UPLD_IIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P_I2CCTRL ; 
 int /*<<< orphan*/  P_MC2 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint32_t FUNC4(struct comedi_device *dev, uint32_t val)
{
	/*  Write I2C command to I2C Transfer Control shadow register. */
	FUNC3(P_I2CCTRL, val);

	/*  Upload I2C shadow registers into working registers and wait for */
	/*  upload confirmation. */

	FUNC0(P_MC2, MC2_UPLD_IIC);
	while (!FUNC1(P_MC2, MC2_UPLD_IIC)) ;

	/*  Wait until I2C bus transfer is finished or an error occurs. */
	while ((FUNC2(P_I2CCTRL) & (I2C_BUSY | I2C_ERR)) == I2C_BUSY) ;

	/*  Return non-zero if I2C error occured. */
	return FUNC2(P_I2CCTRL) & I2C_ERR;

}