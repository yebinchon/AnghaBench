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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 char const* clean_text_base ; 

__attribute__((used)) static const char *
FUNC1 (const char *p)
{
  const char *q;
  int paren_depth;

  for (paren_depth = 1, q = p-1; paren_depth; FUNC0 (--q >= clean_text_base, 0))
    {
      switch (*q)
	{
	case ')':
	  paren_depth++;
	  break;
	case '(':
	  paren_depth--;
	  break;
	}
    }
  return ++q;
}