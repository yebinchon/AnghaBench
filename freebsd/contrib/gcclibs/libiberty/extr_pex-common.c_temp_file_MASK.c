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
struct pex_obj {int /*<<< orphan*/ * tempbase; } ;

/* Variables and functions */
 int PEX_SUFFIX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC8 (struct pex_obj *obj, int flags, char *name)
{
  if (name == NULL)
    {
      if (obj->tempbase == NULL)
        {
          name = FUNC3 (NULL);
        }
      else
        {
          int len = FUNC6 (obj->tempbase);
          int out;

          if (len >= 6
              && FUNC5 (obj->tempbase + len - 6, "XXXXXX") == 0)
            name = FUNC7 (obj->tempbase);
          else
            name = FUNC1 (obj->tempbase, "XXXXXX", NULL);

          out = FUNC4 (name, 0);
          if (out < 0)
            {
              FUNC2 (name);
              return NULL;
            }

          /* This isn't obj->funcs->close because we got the
             descriptor from mkstemps, not from a function in
             obj->funcs.  Calling close here is just like what
             make_temp_file does.  */
          FUNC0 (out);
        }
    }
  else if ((flags & PEX_SUFFIX) != 0)
    {
      if (obj->tempbase == NULL)
        name = FUNC3 (name);
      else
        name = FUNC1 (obj->tempbase, name, NULL);
    }

  return name;
}