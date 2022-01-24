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
 scalar_t__ FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 

char *
FUNC3 (const char *s, size_t n)
{
  char *result;
  size_t len = FUNC2 (s);

  if (n < len)
    len = n;

  result = (char *) FUNC0 (len + 1);
  if (!result)
    return 0;

  result[len] = '\0';
  return (char *) FUNC1 (result, s, len);
}