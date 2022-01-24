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

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*,int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4 (const char *patn, int patn_len, const char *name)
{
  int name_len;
  int s, e;

  name_len = FUNC3 (name);
  if (name_len >= patn_len + 5 && FUNC0 (name, "_ada_", 5)
      && FUNC0 (patn, name + 5, patn_len)
      && FUNC1 (name + patn_len + 5))
    return 1;

  while (name_len >= patn_len)
    {
      if (FUNC0 (patn, name, patn_len) && FUNC1 (name + patn_len))
	return 1;
      do
	{
	  name += 1;
	  name_len -= 1;
	}
      while (name_len > 0
	     && name[0] != '.' && (name[0] != '_' || name[1] != '_'));
      if (name_len <= 0)
	return 0;
      if (name[0] == '_')
	{
	  if (!FUNC2 (name[2]))
	    return 0;
	  name += 2;
	  name_len -= 2;
	}
      else
	{
	  if (!FUNC2 (name[1]))
	    return 0;
	  name += 1;
	  name_len -= 1;
	}
    }

  return 0;
}