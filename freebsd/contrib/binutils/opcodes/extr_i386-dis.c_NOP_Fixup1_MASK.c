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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int PREFIX_DATA ; 
 scalar_t__ address_mode ; 
 scalar_t__ mode_64bit ; 
 int /*<<< orphan*/  obuf ; 
 int prefixes ; 
 int rex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2 (int bytemode, int sizeflag)
{
  if ((prefixes & PREFIX_DATA) != 0
      || (rex != 0
	  && rex != 0x48
	  && address_mode == mode_64bit))
    FUNC0 (bytemode, sizeflag);
  else
    FUNC1 (obuf, "nop");
}