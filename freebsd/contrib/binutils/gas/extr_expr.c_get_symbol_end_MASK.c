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
 scalar_t__* input_line_pointer ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 

char
FUNC3 (void)
{
  char c;

  /* We accept \001 in a name in case this is being called with a
     constructed string.  */
  if (FUNC0 (c = *input_line_pointer++) || c == '\001')
    {
      while (FUNC2 (c = *input_line_pointer++)
	     || c == '\001')
	;
      if (FUNC1 (c))
	c = *input_line_pointer++;
    }
  *--input_line_pointer = 0;
  return (c);
}