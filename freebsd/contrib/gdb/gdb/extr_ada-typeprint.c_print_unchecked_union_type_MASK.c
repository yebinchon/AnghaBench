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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int) ; 
 int FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ui_file*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_file*,char*,...) ; 

__attribute__((used)) static void
FUNC5 (struct type *type, struct ui_file *stream,
			    int show, int level)
{
  FUNC4 (stream, "record (?) is");

  if (show < 0)
    FUNC4 (stream, " ... end record");
  else if (FUNC2 (type) == 0)
    FUNC4 (stream, " null; end record");
  else
    {
      int i;

      FUNC4 (stream, "\n%*scase ? is", level + 4, "");

      for (i = 0; i < FUNC2 (type); i += 1)
	{
	  FUNC4 (stream, "\n%*swhen ? =>\n%*s", level + 8, "",
			    level + 12, "");
	  FUNC3 (FUNC1 (type, i),
			  FUNC0 (type, i),
			  stream, show - 1, level + 12);
	  FUNC4 (stream, ";");
	}

      FUNC4 (stream, "\n%*send case;\n%*send record",
			level + 4, "", level, "");
    }
}