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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_RTX ; 
 int POINTERS_EXTEND_UNSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptr_mode ; 
 int /*<<< orphan*/  word_mode ; 

rtx
FUNC2 (tree addr_tree)
{
  rtx addr = FUNC1 (addr_tree, NULL_RTX, ptr_mode, 0);
  int extend;

#ifdef POINTERS_EXTEND_UNSIGNED
  extend = POINTERS_EXTEND_UNSIGNED;
#else
  /* The previous EH code did an unsigned extend by default, so we do this also
     for consistency.  */
  extend = 1;
#endif

  return FUNC0 (word_mode, ptr_mode, addr, extend);
}