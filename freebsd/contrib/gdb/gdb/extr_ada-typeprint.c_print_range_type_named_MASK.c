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
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_RANGE ; 
 struct type* FUNC1 (struct type*) ; 
 struct type* FUNC2 (char*) ; 
 struct type* builtin_type_int ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct type*,char*,int,char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct type*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC6 (struct type*,char*,int*,struct ui_file*) ; 
 char* FUNC7 (char*,char) ; 
 char* FUNC8 (char*,char*) ; 

__attribute__((used)) static void
FUNC9 (char *name, struct ui_file *stream)
{
  struct type *raw_type = FUNC2 (name);
  struct type *base_type;
  LONGEST low, high;
  char *subtype_info;

  if (raw_type == NULL)
    base_type = builtin_type_int;
  else if (FUNC0 (raw_type) == TYPE_CODE_RANGE)
    base_type = FUNC1 (raw_type);
  else
    base_type = raw_type;

  subtype_info = FUNC8 (name, "___XD");
  if (subtype_info == NULL && raw_type == NULL)
    FUNC3 (stream, "? .. ?");
  else if (subtype_info == NULL)
    FUNC5 (raw_type, stream);
  else
    {
      int prefix_len = subtype_info - name;
      char *bounds_str;
      int n;

      subtype_info += 5;
      bounds_str = FUNC7 (subtype_info, '_');
      n = 1;

      if (*subtype_info == 'L')
	{
	  FUNC6 (raw_type, bounds_str, &n, stream);
	  subtype_info += 1;
	}
      else
	FUNC4 (raw_type, name, prefix_len, "___L",
				   stream);

      FUNC3 (stream, " .. ");

      if (*subtype_info == 'U')
	FUNC6 (raw_type, bounds_str, &n, stream);
      else
	FUNC4 (raw_type, name, prefix_len, "___U",
				   stream);
    }
}