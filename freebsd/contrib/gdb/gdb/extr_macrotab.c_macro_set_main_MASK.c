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
struct macro_table {struct macro_source_file* main_source; } ;
struct macro_source_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct macro_source_file* FUNC1 (struct macro_table*,char const*) ; 

struct macro_source_file *
FUNC2 (struct macro_table *t,
                const char *filename)
{
  /* You can't change a table's main source file.  What would that do
     to the tree?  */
  FUNC0 (! t->main_source);

  t->main_source = FUNC1 (t, filename);

  return t->main_source;
}