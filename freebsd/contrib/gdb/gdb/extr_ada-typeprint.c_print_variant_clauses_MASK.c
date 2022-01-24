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
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 struct type* FUNC1 (struct type*,int) ; 
 int FUNC2 (struct type*) ; 
 int TYPE_FLAG_STUB ; 
 int FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct type*) ; 
 struct type* FUNC5 (struct type*,char*) ; 
 struct type* FUNC6 (struct type*,struct type*) ; 
 int /*<<< orphan*/  FUNC7 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct type*,int,struct ui_file*,struct type*) ; 
 scalar_t__ FUNC9 (struct type*,struct type*,struct ui_file*,int,int) ; 

__attribute__((used)) static void
FUNC10 (struct type *type, int field_num,
		       struct type *outer_type, struct ui_file *stream,
		       int show, int level)
{
  int i;
  struct type *var_type;
  struct type *discr_type;

  var_type = FUNC1 (type, field_num);
  discr_type = FUNC6 (var_type, outer_type);

  if (FUNC0 (var_type) == TYPE_CODE_PTR)
    {
      var_type = FUNC4 (var_type);
      if (FUNC2 (var_type) & TYPE_FLAG_STUB)
	{
	  var_type = FUNC5 (var_type, "___XVU");
	  if (var_type == NULL)
	    return;
	}
    }

  for (i = 0; i < FUNC3 (var_type); i += 1)
    {
      FUNC7 (stream, "\n%*swhen ", level + 4, "");
      FUNC8 (var_type, i, stream, discr_type);
      FUNC7 (stream, " =>");
      if (FUNC9 (FUNC1 (var_type, i),
				    outer_type, stream, show, level + 4) <= 0)
	FUNC7 (stream, " null;");
    }
}