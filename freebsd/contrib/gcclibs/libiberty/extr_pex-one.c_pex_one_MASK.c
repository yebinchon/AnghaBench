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
struct pex_obj {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pex_obj*) ; 
 int /*<<< orphan*/  FUNC1 (struct pex_obj*,int,int*) ; 
 struct pex_obj* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct pex_obj*,int,char const*,char* const*,char const*,char const*,int*) ; 

const char *
FUNC4 (int flags, const char *executable, char * const *argv,
	 const char *pname, const char *outname, const char *errname,
	 int *status, int *err)
{
  struct pex_obj *obj;
  const char *errmsg;

  obj = FUNC2 (0, pname, NULL);
  errmsg = FUNC3 (obj, flags, executable, argv, outname, errname, err);
  if (errmsg == NULL)
    {
      if (!FUNC1 (obj, 1, status))
	{
	  *err = 0;
	  errmsg = "pex_get_status failed";
	}
    }
  FUNC0 (obj);
  return errmsg;  
}