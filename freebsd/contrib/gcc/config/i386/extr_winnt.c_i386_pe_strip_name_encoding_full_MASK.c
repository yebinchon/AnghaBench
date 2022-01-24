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
 char const* FUNC0 (char const*,int) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char) ; 

const char *
FUNC3 (const char *str)
{
  const char *p;
  const char *name = FUNC1 (str);

  /* Strip leading '@' on fastcall symbols.  */
  if (*name == '@')
    name++;

  /* Strip trailing "@n".  */
  p = FUNC2 (name, '@');
  if (p)
    return FUNC0 (name, p - name);

  return name;
}