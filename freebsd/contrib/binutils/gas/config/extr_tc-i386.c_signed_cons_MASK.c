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
 scalar_t__ CODE_64BIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int cons_sign ; 
 scalar_t__ flag_code ; 

__attribute__((used)) static void FUNC1 (int size)
{
  if (flag_code == CODE_64BIT)
    cons_sign = 1;
  FUNC0 (size);
  cons_sign = -1;
}