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
struct macro_definition {int kind; int argc; int /*<<< orphan*/  argv; void* replacement; struct macro_table* table; } ;
typedef  enum macro_kind { ____Placeholder_macro_kind } macro_kind ;

/* Variables and functions */
 char** FUNC0 (int) ; 
 struct macro_definition* FUNC1 (int,struct macro_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct macro_table*,char const**,int) ; 
 void* FUNC3 (struct macro_table*,char const*) ; 
 int macro_function_like ; 
 int /*<<< orphan*/  FUNC4 (struct macro_definition*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct macro_definition *
FUNC5 (struct macro_table *t,
                      enum macro_kind kind,
                      int argc, const char **argv,
                      const char *replacement)
{
  struct macro_definition *d = FUNC1 (sizeof (*d), t);

  FUNC4 (d, 0, sizeof (*d));
  d->table = t;
  d->kind = kind;
  d->replacement = FUNC3 (t, replacement);

  if (kind == macro_function_like)
    {
      int i;
      const char **cached_argv;
      int cached_argv_size = argc * sizeof (*cached_argv);

      /* Bcache all the arguments.  */
      cached_argv = FUNC0 (cached_argv_size);
      for (i = 0; i < argc; i++)
        cached_argv[i] = FUNC3 (t, argv[i]);

      /* Now bcache the array of argument pointers itself.  */
      d->argv = FUNC2 (t, cached_argv, cached_argv_size);
      d->argc = argc;
    }

  /* We don't bcache the entire definition structure because it's got
     a pointer to the macro table in it; since each compilation unit
     has its own macro table, you'd only get bcache hits for identical
     definitions within a compilation unit, which seems unlikely.

     "So, why do macro definitions have pointers to their macro tables
     at all?"  Well, when the splay tree library wants to free a
     node's value, it calls the value freeing function with nothing
     but the value itself.  It makes the (apparently reasonable)
     assumption that the value carries enough information to free
     itself.  But not all macro tables have bcaches, so not all macro
     definitions would be bcached.  There's no way to tell whether a
     given definition is bcached without knowing which table the
     definition belongs to.  ...  blah.  The thing's only sixteen
     bytes anyway, and we can still bcache the name, args, and
     definition, so we just don't bother bcaching the definition
     structure itself.  */
  return d;
}