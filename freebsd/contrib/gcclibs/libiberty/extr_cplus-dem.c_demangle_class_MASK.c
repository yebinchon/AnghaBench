#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct work_stuff {int constructor; int destructor; int temp_start; } ;
struct TYPE_10__ {char* p; char* b; } ;
typedef  TYPE_1__ string ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (struct work_stuff*) ; 
 scalar_t__ FUNC2 (struct work_stuff*,char const**,TYPE_1__*) ; 
 int FUNC3 (struct work_stuff*) ; 
 int /*<<< orphan*/  FUNC4 (struct work_stuff*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct work_stuff*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC10 (struct work_stuff *work, const char **mangled, string *declp)
{
  int success = 0;
  int btype;
  string class_name;
  char *save_class_name_end = 0;

  FUNC7 (&class_name);
  btype = FUNC3 (work);
  if (FUNC2 (work, mangled, &class_name))
    {
      save_class_name_end = class_name.p;
      if ((work->constructor & 1) || (work->destructor & 1))
	{
          /* adjust so we don't include template args */
          if (work->temp_start && (work->temp_start != -1))
            {
              class_name.p = class_name.b + work->temp_start;
            }
	  FUNC9 (declp, &class_name);
	  if (work -> destructor & 1)
	    {
	      FUNC8 (declp, "~");
              work -> destructor -= 1;
	    }
	  else
	    {
	      work -> constructor -= 1;
	    }
	}
      class_name.p = save_class_name_end;
      FUNC5 (work, class_name.b, FUNC0(&class_name));
      FUNC4 (work, class_name.b, FUNC0(&class_name), btype);
      FUNC8 (declp, FUNC1 (work));
      FUNC9 (declp, &class_name);
      success = 1;
    }
  FUNC6 (&class_name);
  return (success);
}