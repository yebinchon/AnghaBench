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
struct macro_table {int /*<<< orphan*/  definitions; } ;
struct macro_source_file {struct macro_table* table; } ;
struct macro_key {int dummy; } ;
struct macro_definition {int dummy; } ;
typedef  int /*<<< orphan*/  splay_tree_value ;
typedef  int /*<<< orphan*/  splay_tree_key ;

/* Variables and functions */
 struct macro_key* FUNC0 (struct macro_source_file*,int,char const*,int /*<<< orphan*/ ,int,char const**,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct macro_key*,char const*,struct macro_source_file*,int) ; 
 int /*<<< orphan*/  macro_function_like ; 
 struct macro_definition* FUNC2 (struct macro_table*,int /*<<< orphan*/ ,int,char const**,char const*) ; 
 struct macro_key* FUNC3 (struct macro_table*,char const*,struct macro_source_file*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5 (struct macro_source_file *source, int line,
                       const char *name, int argc, const char **argv,
                       const char *replacement)
{
  struct macro_table *t = source->table;
  struct macro_key *k;
  struct macro_definition *d;

  k = FUNC0 (source, line,
                              name, macro_function_like,
                              argc, argv,
                              replacement);

  /* See comments about duplicate keys in macro_define_object.  */
  if (k && ! FUNC1 (k, name, source, line))
    return;

  /* We should also check here that all the argument names in ARGV are
     distinct.  */

  k = FUNC3 (t, name, source, line);
  d = FUNC2 (t, macro_function_like, argc, argv, replacement);
  FUNC4 (t->definitions, (splay_tree_key) k, (splay_tree_value) d);
}