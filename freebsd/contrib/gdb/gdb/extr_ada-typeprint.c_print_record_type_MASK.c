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
 int FUNC0 (struct type*) ; 
 int TYPE_FLAG_STUB ; 
 struct type* FUNC1 (struct type*,char*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 struct type* FUNC3 (struct type*) ; 
 int /*<<< orphan*/ * FUNC4 (struct type*) ; 
 int /*<<< orphan*/  FUNC5 (struct type*) ; 
 int /*<<< orphan*/  FUNC6 (struct ui_file*,char*,...) ; 
 scalar_t__ FUNC7 (struct type*,struct type*,struct ui_file*,int,int) ; 

__attribute__((used)) static void
FUNC8 (struct type *type0, struct ui_file *stream, int show,
		   int level)
{
  struct type *parent_type;
  struct type *type;

  type = type0;
  if (FUNC0 (type) & TYPE_FLAG_STUB)
    {
      struct type *type1 = FUNC1 (type, "___XVE");
      if (type1 != NULL)
	type = type1;
    }

  parent_type = FUNC3 (type);
  if (FUNC4 (parent_type) != NULL)
    FUNC6 (stream, "new %s with ",
		      FUNC5 (parent_type));
  else if (parent_type == NULL && FUNC2 (type))
    FUNC6 (stream, "tagged ");

  FUNC6 (stream, "record");

  if (show < 0)
    FUNC6 (stream, " ... end record");
  else
    {
      int flds;

      flds = 0;
      if (parent_type != NULL && FUNC4 (parent_type) == NULL)
	flds += FUNC7 (parent_type, parent_type,
					  stream, show, level);
      flds += FUNC7 (type, type, stream, show, level);

      if (flds > 0)
	FUNC6 (stream, "\n%*send record", level, "");
      else if (flds < 0)
	FUNC6 (stream, " <incomplete type> end record");
      else
	FUNC6 (stream, " null; end record");
    }
}