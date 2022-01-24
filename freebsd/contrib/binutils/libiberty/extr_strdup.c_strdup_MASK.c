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
 int FUNC2 (char const*) ; 

char *
FUNC3(const char *s)
{
  size_t len = FUNC2 (s) + 1;
  char *result = (char*) FUNC0 (len);
  if (result == (char*) 0)
    return (char*) 0;
  return (char*) FUNC1 (result, s, len);
}