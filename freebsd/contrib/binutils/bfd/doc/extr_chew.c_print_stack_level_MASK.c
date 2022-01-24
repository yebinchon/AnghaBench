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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int isp ; 
 int istack ; 
 int /*<<< orphan*/  pc ; 
 int stack ; 
 int /*<<< orphan*/  stderr ; 
 int tos ; 

__attribute__((used)) static void
FUNC1 ()
{
  FUNC0 (stderr, "current string stack depth = %d, ", tos - stack);
  FUNC0 (stderr, "current integer stack depth = %d\n", isp - istack);
  pc++;
}