#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct work_stuff {int dummy; } ;
struct TYPE_5__ {char* b; } ;
typedef  TYPE_1__ string ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct work_stuff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static char *
FUNC3 (struct work_stuff *work, string *declp, int success)
{
  char *demangled = NULL;

  FUNC0 (work);

  /* If demangling was successful, ensure that the demangled string is null
     terminated and return it.  Otherwise, free the demangling decl.  */

  if (!success)
    {
      FUNC2 (declp);
    }
  else
    {
      FUNC1 (declp, "", 1);
      demangled = declp->b;
    }
  return (demangled);
}