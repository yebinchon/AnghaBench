#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ ignoring; } ;

/* Variables and functions */
 scalar_t__ NO_PSEUDO_DOT ; 
 TYPE_1__* current_cframe ; 
 scalar_t__ flag_m68k_mri ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

int
FUNC1 (void)
{
  char *s;

  s = input_line_pointer;

  if (NO_PSEUDO_DOT || flag_m68k_mri)
    {
      if (s[-1] != '.')
	--s;
    }
  else
    {
      if (s[-1] != '.')
	return (current_cframe != NULL) && (current_cframe->ignoring);
    }

  /* We cannot ignore certain pseudo ops.  */
  if (((s[0] == 'i'
	|| s[0] == 'I')
       && (!FUNC0 (s, "if", 2)
	   || !FUNC0 (s, "ifdef", 5)
	   || !FUNC0 (s, "ifndef", 6)))
      || ((s[0] == 'e'
	   || s[0] == 'E')
	  && (!FUNC0 (s, "else", 4)
	      || !FUNC0 (s, "endif", 5)
	      || !FUNC0 (s, "endc", 4))))
    return 0;

  return (current_cframe != NULL) && (current_cframe->ignoring);
}