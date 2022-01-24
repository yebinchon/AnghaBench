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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_VOID ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int) ; 
 int FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct ui_file*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8 (struct type *type, struct ui_file *stream, char *name)
{
  int i, len = FUNC2 (type);

  if (FUNC0 (FUNC3 (type)) == TYPE_CODE_VOID)
    FUNC5 (stream, "procedure");
  else
    FUNC5 (stream, "function");

  if (name != NULL && name[0] != '\0')
    FUNC5 (stream, " %s", name);

  if (len > 0)
    {
      FUNC5 (stream, " (");
      for (i = 0; i < len; i += 1)
	{
	  if (i > 0)
	    {
	      FUNC6 ("; ", stream);
	      FUNC7 ("    ");
	    }
	  FUNC5 (stream, "a%d: ", i + 1);
	  FUNC4 (FUNC1 (type, i), "", stream, -1, 0);
	}
      FUNC5 (stream, ")");
    }

  if (FUNC0 (FUNC3 (type)) != TYPE_CODE_VOID)
    {
      FUNC5 (stream, " return ");
      FUNC4 (FUNC3 (type), "", stream, 0, 0);
    }
}