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
struct us_data {unsigned char* iobuf; } ;

/* Variables and functions */
 unsigned char FUNC0 (unsigned long) ; 
 unsigned char LUNBITS ; 
 unsigned char FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct us_data*,unsigned char*,int) ; 

__attribute__((used)) static int
FUNC5(struct us_data *us, unsigned long Eaddress) {
	unsigned char *command = us->iobuf;
	int result;

	FUNC2("sddr09_erase: erase address %lu\n", Eaddress);

	FUNC3(command, 0, 12);
	command[0] = 0xEA;
	command[1] = LUNBITS;
	command[6] = FUNC1(Eaddress>>16);
	command[7] = FUNC0(Eaddress>>16);
	command[8] = FUNC1(Eaddress & 0xFFFF);
	command[9] = FUNC0(Eaddress & 0xFFFF);

	result = FUNC4(us, command, 12);

	if (result)
		FUNC2("Result for send_control in sddr09_erase %d\n",
			  result);

	return result;
}