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
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ *) ; 
 int graph_dump_format ; 
#define  no_graph 129 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  vcg 128 

__attribute__((used)) static void
FUNC17 (FILE *fp, rtx tmp_rtx)
{
  if (FUNC11 (tmp_rtx) == 0)
    {
      /* This is the first instruction.  Add an edge from the starting
	 block.  */
      switch (graph_dump_format)
	{
	case vcg:
	  FUNC14 (fp, "\
edge: { sourcename: \"%s.0\" targetname: \"%s.%d\" }\n",
		   FUNC13 (),
		   FUNC13 (), FUNC12 (tmp_rtx, 0));
	  break;
	case no_graph:
	  break;
	}
    }

  switch (graph_dump_format)
    {
    case vcg:
      FUNC14 (fp, "node: {\n  title: \"%s.%d\"\n  color: %s\n  \
label: \"%s %d\n",
	       FUNC13 (), FUNC12 (tmp_rtx, 0),
	       FUNC9 (tmp_rtx) ? "lightgrey"
	       : FUNC7 (tmp_rtx) ? "green"
	       : FUNC5 (tmp_rtx) ? "darkgreen"
	       : FUNC0 (tmp_rtx) ? "darkgreen"
	       : FUNC6 (tmp_rtx) ?  "\
darkgrey\n  shape: ellipse" : "white",
	       FUNC3 (FUNC1 (tmp_rtx)), FUNC12 (tmp_rtx, 0));
      break;
    case no_graph:
      break;
    }

  /* Print the RTL.  */
  if (FUNC9 (tmp_rtx))
    {
      const char *name = "";
      if (FUNC8 (tmp_rtx) < 0)
	name =  FUNC2 (FUNC8 (tmp_rtx));
      FUNC14 (fp, " %s", name);
    }
  else if (FUNC4 (tmp_rtx))
    FUNC16 (fp, FUNC10 (tmp_rtx));
  else
    FUNC16 (fp, tmp_rtx);

  switch (graph_dump_format)
    {
    case vcg:
      FUNC15 ("\"\n}\n", fp);
      break;
    case no_graph:
      break;
    }
}