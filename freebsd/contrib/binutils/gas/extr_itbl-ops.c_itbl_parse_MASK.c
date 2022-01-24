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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_RT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int itbl_have_entries ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

int
FUNC3 (char *insntbl)
{
  extern FILE *yyin;
  extern int FUNC4 (void);

  yyin = FUNC1 (insntbl, FOPEN_RT);
  if (yyin == 0)
    {
      FUNC2 ("Can't open processor instruction specification file \"%s\"\n",
	      insntbl);
      return 1;
    }

  while (FUNC4 ())
    ;

  FUNC0 (yyin);
  itbl_have_entries = 1;
  return 0;
}