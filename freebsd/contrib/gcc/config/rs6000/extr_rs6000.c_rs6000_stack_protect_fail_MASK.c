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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 scalar_t__ ABI_V4 ; 
 scalar_t__ DEFAULT_ABI ; 
 scalar_t__ TARGET_SECURE_PLT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ flag_pic ; 

__attribute__((used)) static tree
FUNC2 (void)
{
  return (DEFAULT_ABI == ABI_V4 && TARGET_SECURE_PLT && flag_pic)
	 ? FUNC1 ()
	 : FUNC0 ();
}