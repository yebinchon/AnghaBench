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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t graph_dump_format ; 
 char const** graph_ext ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int FUNC6 (char const*) ; 
 size_t vcg ; 

void
FUNC7 (const char *base)
{
  size_t namelen = FUNC6 (base);
  size_t extlen = FUNC6 (graph_ext[graph_dump_format]) + 1;
  char *buf = FUNC0 (namelen + extlen);
  FILE *fp;

  FUNC5 (buf, base, namelen);
  FUNC5 (buf + namelen, graph_ext[graph_dump_format], extlen);

  fp = FUNC2 (buf, "a");
  if (fp != NULL)
    {
      FUNC4 (graph_dump_format == vcg);
      FUNC3 ("}\n", fp);
      FUNC1 (fp);
    }
}