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
 scalar_t__ FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5 (char *N0, char *N1)
{
  if (N1 == NULL)
    return 0;
  else if (N0 == NULL)
    return 1;
  else
    {
      int k0, k1;
      for (k0 = FUNC4 (N0) - 1; k0 > 0 && FUNC2 (N0[k0]); k0 -= 1)
	;
      for (k1 = FUNC4 (N1) - 1; k1 > 0 && FUNC2 (N1[k1]); k1 -= 1)
	;
      if ((N0[k0] == '_' || N0[k0] == '$') && N0[k0 + 1] != '\000'
	  && (N1[k1] == '_' || N1[k1] == '$') && N1[k1 + 1] != '\000')
	{
	  int n0, n1;
	  n0 = k0;
	  while (N0[n0] == '_' && n0 > 0 && N0[n0 - 1] == '_')
	    n0 -= 1;
	  n1 = k1;
	  while (N1[n1] == '_' && n1 > 0 && N1[n1 - 1] == '_')
	    n1 -= 1;
	  if (n0 == n1 && FUNC0 (N0, N1, n0))
	    return (FUNC1 (N0 + k0 + 1) < FUNC1 (N1 + k1 + 1));
	}
      return (FUNC3 (N0, N1) < 0);
    }
}