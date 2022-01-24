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
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned
FUNC4 (unsigned scalar, unsigned elsize)
{
  unsigned regno = FUNC1 (scalar);
  unsigned elno = FUNC0 (scalar);

  switch (elsize)
    {
    case 16:
      if (regno > 7 || elno > 3)
        goto bad_scalar;
      return regno | (elno << 3);
    
    case 32:
      if (regno > 15 || elno > 1)
        goto bad_scalar;
      return regno | (elno << 4);

    default:
    bad_scalar:
      FUNC3 (FUNC2("scalar out of range for multiply instruction"));
    }

  return 0;
}