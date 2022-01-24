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
typedef  int ULONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_REGISTER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned char*) ; 

char *
FUNC8 (int regno, char *valstr)
{
  ULONGEST val;
  unsigned char regbuf[MAX_REGISTER_SIZE];
  char *p;

  val = 0;
  p = valstr;
  while (p && *p != '\0')
    {
      if (*p == '\r' || *p == '\n')
        {
          while (*p != '\0') 
              p++;
          break;
        }
      if (FUNC3 (*p))
        {
          p++;
          continue;
        }
      if (!FUNC4 (*p) && *p != 'x')
        {
          break;
        }

      val <<= 4;
      val += FUNC2 (*p++);
    }
  FUNC5 ("Supplying Register %d %s\n", regno, valstr);

  if (val == 0 && valstr == p)
    FUNC1 ("monitor_supply_register (%d):  bad value from monitor: %s.",
	   regno, valstr);

  /* supply register stores in target byte order, so swap here */

  FUNC6 (regbuf, FUNC0 (regno), val);

  FUNC7 (regno, regbuf);

  return p;
}