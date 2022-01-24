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
struct macro_source_file {int dummy; } ;
struct macro_key {int start_line; scalar_t__ end_file; struct macro_source_file* start_file; int /*<<< orphan*/  name; struct macro_table* table; } ;

/* Variables and functions */
 struct macro_key* FUNC0 (int,struct macro_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct macro_table*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct macro_key*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct macro_key *
FUNC3 (struct macro_table *t,
               const char *name,
               struct macro_source_file *file,
               int line)
{
  struct macro_key *k = FUNC0 (sizeof (*k), t);

  FUNC2 (k, 0, sizeof (*k));
  k->table = t;
  k->name = FUNC1 (t, name);
  k->start_file = file;
  k->start_line = line;
  k->end_file = 0;

  return k;
}