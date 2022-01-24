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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max_architecture ; 
 char* FUNC1 (char*,char) ; 
 unsigned int FUNC2 (char*,char**,int) ; 

int
FUNC3 (char *regname)
{
  char *p, *q;

  if (!regname[0])
    return -1;

  q = "goli";
  p = FUNC1 (q, regname[0]);
  if (p)
    {
      if (regname[1] < '0' || regname[1] > '8' || regname[2])
	return -1;
      return (p - q) * 8 + regname[1] - '0';
    }
  if (regname[0] == 's' && regname[1] == 'p' && !regname[2])
    return 14;
  if (regname[0] == 'f' && regname[1] == 'p' && !regname[2])
    return 30;
  if (regname[0] == 'f' || regname[0] == 'r')
    {
      unsigned int regnum;

      regnum = FUNC2 (regname + 1, &q, 10);
      if (p == q || *q)
        return -1;
      if (regnum >= ((regname[0] == 'f'
		      && FUNC0 (max_architecture))
		     ? 64 : 32))
	return -1;
      if (regname[0] == 'f')
	{
          regnum += 32;
          if (regnum >= 64 && (regnum & 1))
	    return -1;
        }
      return regnum;
    }
  return -1;
}