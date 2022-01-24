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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (char*,int) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static char *
FUNC4 (char *dest, const char *input, int len)
{  
  char *new_dest;
  int oldlen;

  if (len == 0)
    return dest;
  /* printf("str_append: <<%s>>, <<%s>>, %d\n", dest, input, len); */
  oldlen = (dest ? FUNC2(dest) : 0);
  new_dest = FUNC1 (dest, oldlen + len + 1);
  FUNC0 (new_dest + oldlen, 0, len + 1);
  return FUNC3 (new_dest, input, len);
}