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
typedef  int rc_uint_type ;

/* Variables and functions */
 int CP_UTF16 ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* program_name ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4 (rc_uint_type *cp, int *is_uni, const char *pswitch, int defmode)
{
  if (*is_uni == -1)
    {
      if (*cp != CP_UTF16)
	*is_uni = defmode;
      else
	*is_uni = 1;
    }
  if (*is_uni)
    {
      if (*cp != 0 && *cp != CP_UTF16)
	{
	  FUNC2 (stderr, FUNC0("%s: warning: "), program_name);
	  FUNC2 (stderr, FUNC0("A codepage was specified switch ,%s' and UTF16.\n"), pswitch);
	  FUNC2 (stderr, "%s", FUNC0("\tcodepage settings are ignored.\n"));
	}
      *cp = CP_UTF16;
      return 1;
    }
  if (*cp == CP_UTF16)
    {
      *is_uni = 1;
      return 1;
    }
  if (*cp == 0)
    *cp = 1252;
  if (! FUNC3 (*cp))
	FUNC1 ("Code page 0x%x is unknown.", (unsigned int) *cp);
  *is_uni = 0;
  return 1;
}