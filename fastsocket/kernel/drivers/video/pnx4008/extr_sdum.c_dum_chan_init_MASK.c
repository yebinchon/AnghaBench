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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int BYTES_PER_CMDSTRING ; 
 scalar_t__ CMDSTRING_BASEADDR ; 
 scalar_t__ DUM_COM_BASE ; 
 int MAX_DUM_CHANNELS ; 
 int NR_OF_CMDSTRINGS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__*) ; 

__attribute__((used)) static void FUNC4(void)
{
	int i = 0, ch = 0;
	u32 *cmdptrs;
	u32 *cmdstrings;

	DUM_COM_BASE =
		CMDSTRING_BASEADDR + BYTES_PER_CMDSTRING * NR_OF_CMDSTRINGS;

	if ((cmdptrs =
	     (u32 *) FUNC1(DUM_COM_BASE,
				     sizeof(u32) * NR_OF_CMDSTRINGS)) == NULL)
		return;

	for (ch = 0; ch < NR_OF_CMDSTRINGS; ch++)
		FUNC3(CMDSTRING_BASEADDR + BYTES_PER_CMDSTRING * ch,
			  cmdptrs + ch);

	for (ch = 0; ch < MAX_DUM_CHANNELS; ch++)
		FUNC0(ch);

	/* Clear the cmdstrings */
	cmdstrings =
	    (u32 *)FUNC1(*cmdptrs,
				   BYTES_PER_CMDSTRING * NR_OF_CMDSTRINGS);

	if (!cmdstrings)
		goto out;

	for (i = 0; i < NR_OF_CMDSTRINGS * BYTES_PER_CMDSTRING / sizeof(u32);
	     i++)
		FUNC3(0, cmdstrings + i);

	FUNC2((u32 *)cmdstrings);

out:
	FUNC2((u32 *)cmdptrs);
}