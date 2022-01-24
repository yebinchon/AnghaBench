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
typedef  int /*<<< orphan*/  vla_hwint_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  output_file ; 
 int /*<<< orphan*/  vect_el_t ; 

__attribute__((used)) static void
FUNC4 (vla_hwint_t vect)
{
  int els_on_line;
  size_t vect_length = FUNC1 (vect_el_t, vect);
  size_t i;

  els_on_line = 1;
  if (vect_length == 0)
    FUNC3 ("0 /* This is dummy el because the vect is empty */", output_file);
  else
    for (i = 0; i < vect_length; i++)
      {
	FUNC2 (output_file, "%5ld", (long) FUNC0 (vect_el_t, vect, i));
	if (els_on_line == 10)
	  {
	    els_on_line = 0;
	    FUNC3 (",\n", output_file);
	  }
	else if (i < vect_length-1)
	  FUNC3 (", ", output_file);
	els_on_line++;
      }
}