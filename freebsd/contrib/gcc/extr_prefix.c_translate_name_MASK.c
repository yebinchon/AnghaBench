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
 int /*<<< orphan*/  FUNC0 (char) ; 
 char* PREFIX ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 char* std_prefix ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC7 (char *name)
{
  char code;
  char *key, *old_name;
  const char *prefix;
  int keylen;

  for (;;)
    {
      code = name[0];
      if (code != '@' && code != '$')
	break;

      for (keylen = 0;
	   (name[keylen + 1] != 0 && !FUNC0 (name[keylen + 1]));
	   keylen++)
	;

      key = (char *) FUNC1 (keylen + 1);
      FUNC6 (key, &name[1], keylen);
      key[keylen] = 0;

      if (code == '@')
	{
	  prefix = FUNC4 (key);
	  if (prefix == 0)
	    prefix = std_prefix;
	}
      else
	prefix = FUNC5 (key);

      if (prefix == 0)
	prefix = PREFIX;

      /* We used to strip trailing DIR_SEPARATORs here, but that can
	 sometimes yield a result with no separator when one was coded
	 and intended by the user, causing two path components to run
	 together.  */

      old_name = name;
      name = FUNC2 (prefix, &name[keylen + 1], NULL);
      FUNC3 (old_name);
    }

  return name;
}