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
 int /*<<< orphan*/  FUNC0 (struct macro_source_file*) ; 

struct macro_source_file *
FUNC1 (struct macro_table *t)
{
  FUNC0 (t->main_source);

  return t->main_source;
}