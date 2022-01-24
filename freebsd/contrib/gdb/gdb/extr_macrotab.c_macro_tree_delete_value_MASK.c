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
struct macro_table {int dummy; } ;
struct macro_definition {scalar_t__ kind; int argc; scalar_t__ replacement; scalar_t__* argv; struct macro_table* table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct macro_table*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct macro_definition*,struct macro_table*) ; 
 scalar_t__ macro_function_like ; 

__attribute__((used)) static void
FUNC2 (void *untyped_definition)
{
  struct macro_definition *d = (struct macro_definition *) untyped_definition;
  struct macro_table *t = d->table;

  if (d->kind == macro_function_like)
    {
      int i;

      for (i = 0; i < d->argc; i++)
        FUNC0 (t, (char *) d->argv[i]);
      FUNC0 (t, (char **) d->argv);
    }
  
  FUNC0 (t, (char *) d->replacement);
  FUNC1 (d, t);
}