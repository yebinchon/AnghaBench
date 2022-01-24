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
 int current_option ; 
 int /*<<< orphan*/  disassembly_style ; 
 int num_disassembly_options ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * valid_disassembly_styles ; 

__attribute__((used)) static void
FUNC1 (char *names, int n)
{
  /* Circle through the various flavors.  */
  current_option = (current_option + 1) % num_disassembly_options;

  disassembly_style = valid_disassembly_styles[current_option];
  FUNC0 ();
}