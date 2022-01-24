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
struct obstack {int dummy; } ;
struct macro_table {int /*<<< orphan*/  definitions; int /*<<< orphan*/ * main_source; struct bcache* bcache; struct obstack* obstack; } ;
struct bcache {int dummy; } ;
typedef  int /*<<< orphan*/  splay_tree_delete_value_fn ;
typedef  int /*<<< orphan*/  splay_tree_delete_key_fn ;
typedef  int /*<<< orphan*/  splay_tree_deallocate_fn ;
typedef  int /*<<< orphan*/  splay_tree_allocate_fn ;

/* Variables and functions */
 scalar_t__ macro_alloc ; 
 scalar_t__ macro_free ; 
 int /*<<< orphan*/  macro_tree_compare ; 
 scalar_t__ macro_tree_delete_key ; 
 scalar_t__ macro_tree_delete_value ; 
 int /*<<< orphan*/  FUNC0 (struct macro_table*,int /*<<< orphan*/ ,int) ; 
 struct macro_table* FUNC1 (struct obstack*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct macro_table*) ; 
 struct macro_table* FUNC3 (int) ; 

struct macro_table *
FUNC4 (struct obstack *obstack,
                 struct bcache *b)
{
  struct macro_table *t;

  /* First, get storage for the `struct macro_table' itself.  */
  if (obstack)
    t = FUNC1 (obstack, sizeof (*t));
  else
    t = FUNC3 (sizeof (*t));

  FUNC0 (t, 0, sizeof (*t));
  t->obstack = obstack;
  t->bcache = b;
  t->main_source = NULL;
  t->definitions = (FUNC2
                    (macro_tree_compare,
                     ((splay_tree_delete_key_fn) macro_tree_delete_key),
                     ((splay_tree_delete_value_fn) macro_tree_delete_value),
                     ((splay_tree_allocate_fn) macro_alloc),
                     ((splay_tree_deallocate_fn) macro_free),
                     t));
  
  return t;
}