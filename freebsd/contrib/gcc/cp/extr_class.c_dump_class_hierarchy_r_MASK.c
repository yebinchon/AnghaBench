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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 char* HOST_WIDE_INT_PRINT_DEC ; 
 int TDF_SLIM ; 
 int /*<<< orphan*/  TFF_PLAIN_IDENTIFIER ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 char* FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC19 (FILE *stream,
			int flags,
			tree binfo,
			tree igo,
			int indent)
{
  int indented = 0;
  tree base_binfo;
  int i;

  indented = FUNC16 (stream, indent, 0);
  FUNC14 (stream, "%s (0x%lx) ",
	   FUNC18 (FUNC6 (binfo), TFF_PLAIN_IDENTIFIER),
	   (unsigned long) binfo);
  if (binfo != igo)
    {
      FUNC14 (stream, "alternative-path\n");
      return igo;
    }
  igo = FUNC12 (binfo);

  FUNC14 (stream, HOST_WIDE_INT_PRINT_DEC,
	   FUNC17 (FUNC3 (binfo), 0));
  if (FUNC15 (FUNC6 (binfo)))
    FUNC14 (stream, " empty");
  else if (FUNC11 (FUNC6 (binfo)))
    FUNC14 (stream, " nearly-empty");
  if (FUNC7 (binfo))
    FUNC14 (stream, " virtual");
  FUNC14 (stream, "\n");

  indented = 0;
  if (FUNC4 (binfo))
    {
      indented = FUNC16 (stream, indent + 3, indented);
      FUNC14 (stream, " primary-for %s (0x%lx)",
	       FUNC18 (FUNC6 (FUNC1 (binfo)),
			       TFF_PLAIN_IDENTIFIER),
	       (unsigned long)FUNC1 (binfo));
    }
  if (FUNC2 (binfo))
    {
      indented = FUNC16 (stream, indent + 3, indented);
      FUNC14 (stream, " lost-primary");
    }
  if (indented)
    FUNC14 (stream, "\n");

  if (!(flags & TDF_SLIM))
    {
      int indented = 0;

      if (FUNC5 (binfo))
	{
	  indented = FUNC16 (stream, indent + 3, indented);
	  FUNC14 (stream, " subvttidx=%s",
		   FUNC13 (FUNC5 (binfo),
				   TFF_PLAIN_IDENTIFIER));
	}
      if (FUNC9 (binfo))
	{
	  indented = FUNC16 (stream, indent + 3, indented);
	  FUNC14 (stream, " vptridx=%s",
		   FUNC13 (FUNC9 (binfo),
				   TFF_PLAIN_IDENTIFIER));
	}
      if (FUNC8 (binfo))
	{
	  indented = FUNC16 (stream, indent + 3, indented);
	  FUNC14 (stream, " vbaseoffset=%s",
		   FUNC13 (FUNC8 (binfo),
				   TFF_PLAIN_IDENTIFIER));
	}
      if (FUNC10 (binfo))
	{
	  indented = FUNC16 (stream, indent + 3, indented);
	  FUNC14 (stream, " vptr=%s",
		   FUNC13 (FUNC10 (binfo),
				   TFF_PLAIN_IDENTIFIER));
	}

      if (indented)
	FUNC14 (stream, "\n");
    }

  for (i = 0; FUNC0 (binfo, i, base_binfo); i++)
    igo = FUNC19 (stream, flags, base_binfo, igo, indent + 2);

  return igo;
}