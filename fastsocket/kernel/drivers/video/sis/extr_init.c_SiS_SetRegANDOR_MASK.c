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
typedef  int /*<<< orphan*/  SISIOADDRESS ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned short,unsigned short) ; 

void
FUNC2(SISIOADDRESS Port, unsigned short Index, unsigned short DataAND, unsigned short DataOR)
{
   unsigned short temp;

   temp = FUNC0(Port, Index);
   temp = (temp & (DataAND)) | DataOR;
   FUNC1(Port, Index, temp);
}