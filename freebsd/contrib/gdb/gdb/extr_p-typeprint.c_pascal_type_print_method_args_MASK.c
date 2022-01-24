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

/* Variables and functions */
 int FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ui_file*) ; 
 scalar_t__ FUNC2 (char) ; 
 int FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 

void
FUNC4 (char *physname, char *methodname,
			       struct ui_file *stream)
{
  int is_constructor = FUNC0 (physname, "__ct__", 6);
  int is_destructor = FUNC0 (physname, "__dt__", 6);

  if (is_constructor || is_destructor)
    {
      physname += 6;
    }

  FUNC1 (methodname, stream);

  if (physname && (*physname != 0))
    {
      int i = 0;
      int len = 0;
      char storec;
      char *argname;
      FUNC1 (" (", stream);
      /* we must demangle this */
      while (FUNC2 (physname[0]))
	{
	  while (FUNC2 (physname[len]))
	    {
	      len++;
	    }
	  i = FUNC3 (physname, &argname, 0);
	  physname += len;
	  storec = physname[i];
	  physname[i] = 0;
	  FUNC1 (physname, stream);
	  physname[i] = storec;
	  physname += i;
	  if (physname[0] != 0)
	    {
	      FUNC1 (", ", stream);
	    }
	}
      FUNC1 (")", stream);
    }
}