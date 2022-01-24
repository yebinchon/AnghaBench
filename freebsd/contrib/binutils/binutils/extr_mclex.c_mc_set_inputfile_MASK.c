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
 char const* input_filename ; 
 char* FUNC0 (char const*,char) ; 
 char* FUNC1 (char const*) ; 

void
FUNC2 (const char *name)
{
  if (! name || *name == 0)
    input_filename = "-";
  else
    {
      const char *s1 = FUNC0 (name, '/');
      const char *s2 = FUNC0 (name, '\\');

      if (! s1)
	s1 = s2;
      if (s1 && s2 && s1 < s2)
	s1 = s2;
      if (! s1)
	s1 = name;
      else
	s1++;
      s1 = FUNC1 (s1);
      input_filename = s1;
    }
}