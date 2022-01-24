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
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (char *result, char *signature)
{
  int array = 0;
  char *ptr;
  int i;
  while (*signature == '[')
    {
      array++;
      signature++;
    }
  switch (signature[0])
    {
    case 'L':
      /* Subtract 2 for 'L' and ';', but add 1 for final nul. */
      signature++;
      ptr = result;
      for (; *signature != ';' && *signature != '\0'; signature++)
	{
	  if (*signature == '/')
	    *ptr++ = '.';
	  else
	    *ptr++ = *signature;
	}
      break;
    default:
      ptr = FUNC0 (FUNC1 (signature[0]));
      i = FUNC3 (ptr);
      FUNC2 (result, ptr);
      ptr = result + i;
      break;
    }
  while (--array >= 0)
    {
      *ptr++ = '[';
      *ptr++ = ']';
    }
}