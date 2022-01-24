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
 int /*<<< orphan*/  QUIT ; 
 int /*<<< orphan*/  FUNC0 (struct type*,int) ; 
 struct type* FUNC1 (struct type*,int) ; 
 int FUNC2 (struct type*) ; 
 int TYPE_FLAG_STUB ; 
 int FUNC3 (struct type*) ; 
 scalar_t__ FUNC4 (struct type*,int) ; 
 scalar_t__ FUNC5 (struct type*,int) ; 
 scalar_t__ FUNC6 (struct type*,int) ; 
 scalar_t__ FUNC7 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct type*,int /*<<< orphan*/ ,struct ui_file*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct type*,int,struct type*,struct ui_file*,int,int) ; 

__attribute__((used)) static int
FUNC11 (struct type *type, struct type *outer_type,
			  struct ui_file *stream, int show, int level)
{
  int len, i, flds;

  flds = 0;
  len = FUNC3 (type);

  if (len == 0 && (FUNC2 (type) & TYPE_FLAG_STUB) != 0)
    return -1;

  for (i = 0; i < len; i += 1)
    {
      QUIT;

      if (FUNC5 (type, i) || FUNC4 (type, i))
	;
      else if (FUNC7 (type, i))
	flds += FUNC11 (FUNC1 (type, i), type,
					  stream, show, level);
      else if (FUNC6 (type, i))
	{
	  FUNC10 (type, i, outer_type, stream, show, level);
	  flds = 1;
	}
      else
	{
	  flds += 1;
	  FUNC9 (stream, "\n%*s", level + 4, "");
	  FUNC8 (FUNC1 (type, i),
			  FUNC0 (type, i),
			  stream, show - 1, level + 4);
	  FUNC9 (stream, ";");
	}
    }

  return flds;
}