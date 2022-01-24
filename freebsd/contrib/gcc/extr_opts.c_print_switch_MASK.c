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
 unsigned int columns ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static unsigned int
FUNC3 (const char *text, unsigned int indent)
{
  unsigned int len = FUNC2 (text) + 1; /* trailing comma */

  if (indent)
    {
      FUNC1 (',');
      if (indent + len > columns)
	{
	  FUNC1 ('\n');
	  FUNC1 (' ');
	  indent = 1;
	}
    }
  else
    FUNC1 (' ');

  FUNC1 (' ');
  FUNC0 (text, stdout);

  return indent + len + 1;
}