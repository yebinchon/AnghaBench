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
 scalar_t__ FUNC0 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 struct type* FUNC3 (struct type*) ; 
 char* FUNC4 (struct type*) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 

char *
FUNC7 (struct type *type0)
{
  static char *result = NULL;
  static size_t result_len = 0;
  struct type *type;
  const char *name;
  const char *discrim_end;
  const char *discrim_start;

  if (FUNC2 (type0) == TYPE_CODE_PTR)
    type = FUNC3 (type0);
  else
    type = type0;

  name = FUNC4 (type);

  if (name == NULL || name[0] == '\000')
    return "";

  for (discrim_end = name + FUNC5 (name) - 6; discrim_end != name;
       discrim_end -= 1)
    {
      if (FUNC0 (discrim_end, "___XVN", 6))
	break;
    }
  if (discrim_end == name)
    return "";

  for (discrim_start = discrim_end; discrim_start != name + 3;
       discrim_start -= 1)
    {
      if (discrim_start == name + 1)
	return "";
      if ((discrim_start > name + 3 && FUNC0 (discrim_start - 3, "___", 3))
	  || discrim_start[-1] == '.')
	break;
    }

  FUNC1 (result, result_len, discrim_end - discrim_start + 1);
  FUNC6 (result, discrim_start, discrim_end - discrim_start);
  result[discrim_end - discrim_start] = '\0';
  return result;
}