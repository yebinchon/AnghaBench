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
typedef  int /*<<< orphan*/  symbolS ;

/* Variables and functions */
 int FUNC0 () ; 
 char* input_line_pointer ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static symbolS *
FUNC2 (void)
{
  int c;
  char *name;
  symbolS *p;

  name = input_line_pointer;
  c = FUNC0 ();
  p = (symbolS *) FUNC1 (name);
  *input_line_pointer = c;
  return p;
}