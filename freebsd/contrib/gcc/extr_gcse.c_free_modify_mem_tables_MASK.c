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
 scalar_t__ canon_modify_mem_list ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ modify_mem_list ; 

__attribute__((used)) static void
FUNC2 (void)
{
  FUNC0 ();
  FUNC1 (modify_mem_list);
  FUNC1 (canon_modify_mem_list);
  modify_mem_list = 0;
  canon_modify_mem_list = 0;
}