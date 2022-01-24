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
struct hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hw*,int,int) ; 

__attribute__((used)) static void FUNC2(struct hw *hw)
{
	if ((FUNC0(hw, 0xcc) & 0xff) == 0xaa)
		FUNC1(hw, 0xcc, 0x00);
}