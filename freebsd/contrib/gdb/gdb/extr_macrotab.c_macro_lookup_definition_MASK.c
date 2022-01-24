#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct macro_source_file {int dummy; } ;
struct macro_definition {int dummy; } ;
typedef  TYPE_1__* splay_tree_node ;
struct TYPE_3__ {scalar_t__ value; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char const*,struct macro_source_file*,int) ; 

struct macro_definition *
FUNC1 (struct macro_source_file *source,
                         int line, const char *name)
{
  splay_tree_node n = FUNC0 (name, source, line);

  if (n)
    return (struct macro_definition *) n->value;
  else
    return 0;
}