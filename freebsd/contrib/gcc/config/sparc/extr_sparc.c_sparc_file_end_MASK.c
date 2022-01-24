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
 scalar_t__ NEED_INDICATE_EXEC_STACK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  pic_helper_emitted_p ; 
 scalar_t__* pic_helper_symbol_name ; 

__attribute__((used)) static void
FUNC2 (void)
{
  /* If we haven't emitted the special PIC helper function, do so now.  */
  if (pic_helper_symbol_name[0] && !pic_helper_emitted_p)
    FUNC0 ();

  if (NEED_INDICATE_EXEC_STACK)
    FUNC1 ();
}