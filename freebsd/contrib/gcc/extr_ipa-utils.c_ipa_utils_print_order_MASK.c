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
struct cgraph_node {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cgraph_node*) ; 
 int /*<<< orphan*/  dump_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 

void 
FUNC3 (FILE* out, 
		       const char * note, 
		       struct cgraph_node** order, 
		       int count) 
{
  int i;
  FUNC2 (out, "\n\n ordered call graph: %s\n", note);
  
  for (i = count - 1; i >= 0; i--)
    FUNC0(dump_file, order[i]);
  FUNC2 (out, "\n");
  FUNC1(out);
}