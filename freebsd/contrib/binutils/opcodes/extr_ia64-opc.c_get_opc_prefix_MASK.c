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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 char* FUNC1 (char const*,char) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3 (const char **ptr, char *dest)
{
  char *c = FUNC1 (*ptr, '.');
  if (c != NULL)
    {
      FUNC0 (dest, *ptr, c - *ptr);
      dest[c - *ptr] = '\0';
      *ptr = c + 1;
    }
  else
    {
      int l = FUNC2 (*ptr);
      FUNC0 (dest, *ptr, l);
      dest[l] = '\0';
      *ptr += l;
    }
}