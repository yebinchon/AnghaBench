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
 char* FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 char* name_buffer ; 
 int name_buffer_len ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,int) ; 

__attribute__((used)) static char *
FUNC6 (struct type *type)
{
  if (FUNC0 (type) == NULL)
    return NULL;
  else
    {
      char *raw_name = FUNC0 (type);
      char *s, *q;

      if (name_buffer == NULL || name_buffer_len <= FUNC3 (raw_name))
	{
	  name_buffer_len = 16 + 2 * FUNC3 (raw_name);
	  name_buffer = FUNC5 (name_buffer, name_buffer_len);
	}
      FUNC2 (name_buffer, raw_name);

      s = (char *) FUNC4 (name_buffer, "___");
      if (s != NULL)
	*s = '\0';

      s = name_buffer + FUNC3 (name_buffer) - 1;
      while (s > name_buffer && (s[0] != '_' || s[-1] != '_'))
	s -= 1;

      if (s == name_buffer)
	return name_buffer;

      if (!FUNC1 (s[1]))
	return NULL;

      for (s = q = name_buffer; *s != '\0'; q += 1)
	{
	  if (s[0] == '_' && s[1] == '_')
	    {
	      *q = '.';
	      s += 2;
	    }
	  else
	    {
	      *q = *s;
	      s += 1;
	    }
	}
      *q = '\0';
      return name_buffer;
    }
}