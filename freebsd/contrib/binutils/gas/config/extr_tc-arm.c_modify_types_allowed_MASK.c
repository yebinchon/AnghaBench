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
typedef  enum neon_el_type { ____Placeholder_neon_el_type } neon_el_type ;

/* Variables and functions */
 int N_MAX_NONSPECIAL ; 
 scalar_t__ SUCCESS ; 
 scalar_t__ FUNC0 (int*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int*,unsigned int*) ; 
 unsigned int FUNC2 (int,unsigned int) ; 

__attribute__((used)) static unsigned
FUNC3 (unsigned allowed, unsigned mods)
{
  unsigned size;
  enum neon_el_type type;
  unsigned destmask;
  int i;
  
  destmask = 0;
  
  for (i = 1; i <= N_MAX_NONSPECIAL; i <<= 1)
    {
      if (FUNC0 (&type, &size, allowed & i) == SUCCESS)
        {
          FUNC1 (mods, &type, &size);
          destmask |= FUNC2 (type, size);
        }
    }
  
  return destmask;
}