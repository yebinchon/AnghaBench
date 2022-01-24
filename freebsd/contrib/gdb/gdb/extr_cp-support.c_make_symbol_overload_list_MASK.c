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
struct symbol {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 struct cleanup* FUNC1 (int /*<<< orphan*/ ,struct symbol**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 struct symbol** sym_return_val ; 
 scalar_t__ sym_return_val_index ; 
 int sym_return_val_size ; 
 int /*<<< orphan*/  xfree ; 
 struct symbol** FUNC3 (int) ; 

struct symbol **
FUNC4 (const char *func_name,
			   const char *namespace)
{
  struct cleanup *old_cleanups;

  sym_return_val_size = 100;
  sym_return_val_index = 0;
  sym_return_val = FUNC3 ((sym_return_val_size + 1) *
			    sizeof (struct symbol *));
  sym_return_val[0] = NULL;

  old_cleanups = FUNC1 (xfree, sym_return_val);

  FUNC2 (func_name, namespace);

  FUNC0 (old_cleanups);

  return sym_return_val;
}