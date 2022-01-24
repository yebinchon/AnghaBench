#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  type_kind_t ;
struct work_stuff {int dummy; } ;
typedef  int /*<<< orphan*/  string ;
struct TYPE_3__ {char const* in; int /*<<< orphan*/  out; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct work_stuff*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 
 TYPE_1__* optable ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6 (struct work_stuff *work, const char **mangled,
                     string *s, type_kind_t tk)
{
  int need_operator = 0;
  int success;

  success = 1;
  FUNC4 (s, "(", 1);
  (*mangled)++;
  while (success && **mangled != 'W' && **mangled != '\0')
    {
      if (need_operator)
	{
	  size_t i;
	  size_t len;

	  success = 0;

	  len = FUNC5 (*mangled);

	  for (i = 0; i < FUNC0 (optable); ++i)
	    {
	      size_t l = FUNC5 (optable[i].in);

	      if (l <= len
		  && FUNC2 (optable[i].in, *mangled, l) == 0)
		{
		  FUNC4 (s, " ", 1);
		  FUNC3 (s, optable[i].out);
		  FUNC4 (s, " ", 1);
		  success = 1;
		  (*mangled) += l;
		  break;
		}
	    }

	  if (!success)
	    break;
	}
      else
	need_operator = 1;

      success = FUNC1 (work, mangled, s, tk);
    }

  if (**mangled != 'W')
    success = 0;
  else
    {
      FUNC4 (s, ")", 1);
      (*mangled)++;
    }

  return success;
}