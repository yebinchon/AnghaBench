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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ USING_SJLJ_EXCEPTIONS ; 
 int /*<<< orphan*/  flag_exceptions ; 
 int /*<<< orphan*/  flag_unwind_tables ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1 (FILE *file)
{
  if (!flag_unwind_tables && (!flag_exceptions || USING_SJLJ_EXCEPTIONS))
    return;

  FUNC0 ("\t.body\n", file);
}