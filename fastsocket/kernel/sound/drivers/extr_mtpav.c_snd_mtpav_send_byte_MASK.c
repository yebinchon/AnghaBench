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
struct mtpav {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CREG ; 
 int /*<<< orphan*/  DREG ; 
 int SIGC_WRITE ; 
 int FUNC0 (struct mtpav*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtpav*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtpav*) ; 

__attribute__((used)) static void FUNC3(struct mtpav *chip, u8 byte)
{
	u8 tcbyt;
	u8 clrwrite;
	u8 setwrite;

	FUNC2(chip);

	/////////////////

	tcbyt = FUNC0(chip, CREG);
	clrwrite = tcbyt & (SIGC_WRITE ^ 0xff);
	setwrite = tcbyt | SIGC_WRITE;

	FUNC1(chip, DREG, byte);
	FUNC1(chip, CREG, clrwrite);	// clear write bit

	FUNC1(chip, CREG, setwrite);	// set write bit

}