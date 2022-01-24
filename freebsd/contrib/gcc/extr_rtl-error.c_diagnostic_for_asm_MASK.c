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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  diagnostic_t ;
typedef  int /*<<< orphan*/  diagnostic_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3 (rtx insn, const char *msg, va_list *args_ptr,
		    diagnostic_t kind)
{
  diagnostic_info diagnostic;

  FUNC0 (&diagnostic, msg, args_ptr,
		       FUNC1 (insn), kind);
  FUNC2 (&diagnostic);
}