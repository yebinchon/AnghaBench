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
struct value {int dummy; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 struct value* FUNC1 (struct expression*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 struct cleanup* FUNC2 (int /*<<< orphan*/ ,struct expression**) ; 
 struct expression* FUNC3 (char*) ; 

struct value *
FUNC4 (char *exp)
{
  struct expression *expr = FUNC3 (exp);
  struct value *val;
  struct cleanup *old_chain =
    FUNC2 (free_current_contents, &expr);

  val = FUNC1 (expr);
  FUNC0 (old_chain);
  return val;
}