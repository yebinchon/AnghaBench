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
struct work_stuff {int constructor; int destructor; int static_type; int type_quals; int dllimported; } ;
typedef  int /*<<< orphan*/  string ;

/* Variables and functions */
 scalar_t__ AUTO_DEMANGLING ; 
 scalar_t__ GNU_DEMANGLING ; 
 int TYPE_UNQUALIFIED ; 
 int FUNC0 (struct work_stuff*,char const**,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct work_stuff*,char const**,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct work_stuff*,char const**,int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct work_stuff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static char *
FUNC6 (struct work_stuff *work, const char *mangled)
{

  string decl;
  int success = 0;
  char *demangled = NULL;
  int s1, s2, s3, s4;
  s1 = work->constructor;
  s2 = work->destructor;
  s3 = work->static_type;
  s4 = work->type_quals;
  work->constructor = work->destructor = 0;
  work->type_quals = TYPE_UNQUALIFIED;
  work->dllimported = 0;

  if ((mangled != NULL) && (*mangled != '\0'))
    {
      FUNC4 (&decl);

      /* First check to see if gnu style demangling is active and if the
	 string to be demangled contains a CPLUS_MARKER.  If so, attempt to
	 recognize one of the gnu special forms rather than looking for a
	 standard prefix.  In particular, don't worry about whether there
	 is a "__" string in the mangled string.  Consider "_$_5__foo" for
	 example.  */

      if ((AUTO_DEMANGLING || GNU_DEMANGLING))
	{
	  success = FUNC2 (work, &mangled, &decl);
	}
      if (!success)
	{
	  success = FUNC0 (work, &mangled, &decl);
	}
      if (success && (*mangled != '\0'))
	{
	  success = FUNC1 (work, &mangled, &decl);
	}
      if (work->constructor == 2)
        {
          FUNC5 (&decl, "global constructors keyed to ");
          work->constructor = 0;
        }
      else if (work->destructor == 2)
        {
          FUNC5 (&decl, "global destructors keyed to ");
          work->destructor = 0;
        }
      else if (work->dllimported == 1)
        {
          FUNC5 (&decl, "import stub for ");
          work->dllimported = 0;
        }
      demangled = FUNC3 (work, &decl, success);
    }
  work->constructor = s1;
  work->destructor = s2;
  work->static_type = s3;
  work->type_quals = s4;
  return demangled;
}