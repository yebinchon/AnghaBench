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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int BITS_PER_UNIT ; 
 int FUNCTION_BOUNDARY ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int) ; 
 scalar_t__ sparc_addr_diff_list ; 
 scalar_t__ sparc_addr_list ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (void)
{
  rtx t;
  int align;

  if (sparc_addr_list == NULL_RTX
      && sparc_addr_diff_list == NULL_RTX)
    return;

  /* Align to cache line in the function's code section.  */
  FUNC6 (FUNC2 ());

  align = FUNC3 (FUNCTION_BOUNDARY / BITS_PER_UNIT);
  if (align > 0)
    FUNC0 (asm_out_file, align);
  
  for (t = sparc_addr_list; t ; t = FUNC1 (t, 1))
    FUNC5 (FUNC1 (t, 0));
  for (t = sparc_addr_diff_list; t ; t = FUNC1 (t, 1))
    FUNC4 (FUNC1 (t, 0));

  sparc_addr_list = sparc_addr_diff_list = NULL_RTX;
}