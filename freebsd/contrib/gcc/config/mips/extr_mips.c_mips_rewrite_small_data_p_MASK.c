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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum mips_symbol_type { ____Placeholder_mips_symbol_type } mips_symbol_type ;

/* Variables and functions */
 int SYMBOL_SMALL_DATA ; 
 scalar_t__ TARGET_EXPLICIT_RELOCS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool
FUNC1 (rtx x)
{
  enum mips_symbol_type symbol_type;

  return (TARGET_EXPLICIT_RELOCS
	  && FUNC0 (x, &symbol_type)
	  && symbol_type == SYMBOL_SMALL_DATA);
}