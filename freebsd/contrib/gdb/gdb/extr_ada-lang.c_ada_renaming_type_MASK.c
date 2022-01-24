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
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_ENUM ; 
 int /*<<< orphan*/ * FUNC1 (char*,char const) ; 
 char* FUNC2 (char const*,char*) ; 
 char* FUNC3 (struct type*) ; 

const char *
FUNC4 (struct type *type)
{
  if (type != NULL && FUNC0 (type) == TYPE_CODE_ENUM)
    {
      const char *name = FUNC3 (type);
      const char *suffix = (name == NULL) ? NULL : FUNC2 (name, "___XR");
      if (suffix == NULL
	  || (suffix[5] != '\000' && FUNC1 ("PES_", suffix[5]) == NULL))
	return NULL;
      else
	return suffix + 3;
    }
  else
    return NULL;
}