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
struct cgraph_varpool_node {scalar_t__ externally_visible; scalar_t__ output; scalar_t__ finalized; scalar_t__ analyzed; scalar_t__ needed; int /*<<< orphan*/  decl; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char** availability_names ; 
 scalar_t__ cgraph_function_flags_ready ; 
 size_t FUNC1 (struct cgraph_varpool_node*) ; 
 char* FUNC2 (struct cgraph_varpool_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC4 (FILE *f, struct cgraph_varpool_node *node)
{
  FUNC3 (f, "%s:", FUNC2 (node));
  FUNC3 (f, " availability:%s",
	   cgraph_function_flags_ready
	   ? availability_names[FUNC1 (node)]
	   : "not-ready");
  if (FUNC0 (node->decl))
    FUNC3 (f, " initialized");
  if (node->needed)
    FUNC3 (f, " needed");
  if (node->analyzed)
    FUNC3 (f, " analyzed");
  if (node->finalized)
    FUNC3 (f, " finalized");
  if (node->output)
    FUNC3 (f, " output");
  if (node->externally_visible)
    FUNC3 (f, " externally_visible");
  FUNC3 (f, "\n");
}