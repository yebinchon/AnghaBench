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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ lexptr ; 
 scalar_t__ macro_expanded_text ; 
 scalar_t__ macro_original_text ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void 
FUNC2 (void)
{
  /* There'd better be something to pop back to, and we better have
     saved a pointer to the start of the expanded text.  */
  FUNC0 (macro_original_text);
  FUNC0 (macro_expanded_text);

  /* Pop back to the original text.  */
  lexptr = macro_original_text;
  macro_original_text = 0;

  /* Free the expanded text.  */
  FUNC1 (macro_expanded_text);
  macro_expanded_text = 0;
}