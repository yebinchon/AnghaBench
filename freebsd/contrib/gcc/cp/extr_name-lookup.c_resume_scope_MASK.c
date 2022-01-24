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
struct cp_binding_level {int /*<<< orphan*/  binding_depth; struct cp_binding_level* level_chain; } ;

/* Variables and functions */
 scalar_t__ ENABLE_SCOPE_CHECKING ; 
 int /*<<< orphan*/  binding_depth ; 
 int /*<<< orphan*/  class_binding_level ; 
 struct cp_binding_level* current_binding_level ; 
 int /*<<< orphan*/  FUNC0 (struct cp_binding_level*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  input_line ; 
 scalar_t__ is_class_level ; 

__attribute__((used)) static void
FUNC3 (struct cp_binding_level* b)
{
  /* Resuming binding levels is meant only for namespaces,
     and those cannot nest into classes.  */
  FUNC1 (!class_binding_level);
  /* Also, resuming a non-directly nested namespace is a no-no.  */
  FUNC1 (b->level_chain == current_binding_level);
  current_binding_level = b;
  if (ENABLE_SCOPE_CHECKING)
    {
      b->binding_depth = binding_depth;
      FUNC2 (binding_depth);
      FUNC0 (b, input_line, "resume");
      is_class_level = 0;
      binding_depth++;
    }
}