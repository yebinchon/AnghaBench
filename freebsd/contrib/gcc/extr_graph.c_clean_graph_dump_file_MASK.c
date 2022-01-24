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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 size_t graph_dump_format ; 
 char const** graph_ext ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int FUNC7 (char const*) ; 
 size_t vcg ; 

void
FUNC8 (const char *base)
{
  size_t namelen = FUNC7 (base);
  size_t extlen = FUNC7 (graph_ext[graph_dump_format]) + 1;
  char *buf = FUNC0 (namelen + extlen);
  FILE *fp;

  FUNC6 (buf, base, namelen);
  FUNC6 (buf + namelen, graph_ext[graph_dump_format], extlen);

  fp = FUNC3 (buf, "w");

  if (fp == NULL)
    FUNC1 ("can't open %s: %m", buf);

  FUNC5 (graph_dump_format == vcg);
  FUNC4 ("graph: {\nport_sharing: no\n", fp);

  FUNC2 (fp);
}