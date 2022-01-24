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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int graph_dump_format ; 
#define  no_graph 129 
#define  vcg 128 

__attribute__((used)) static void
FUNC2 (FILE *fp)
{
  switch (graph_dump_format)
    {
    case vcg:
      FUNC1 (fp, "node: { title: \"%s.999999\" label: \"END\" }\n}\n",
	       FUNC0 ());
      break;
    case no_graph:
      break;
    }
}