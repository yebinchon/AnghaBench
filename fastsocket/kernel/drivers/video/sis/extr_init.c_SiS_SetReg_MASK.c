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
typedef  scalar_t__ SISIOADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned short) ; 

void
FUNC1(SISIOADDRESS port, unsigned short index, unsigned short data)
{
   FUNC0(port, index);
   FUNC0(port + 1, data);
}