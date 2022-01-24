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
 int HASH_SIZE ; 
 int /*<<< orphan*/  collisions ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__* hash_tab ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ next_index ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3 (const char *fname)
{
  int i, i0;

  /* NOTE:  If you edit this, also edit lookup_std_proto in fix-header.c !! */
  i = FUNC1 (fname, FUNC2 (fname)) % HASH_SIZE;
  i0 = i;
  if (hash_tab[i] != 0)
    {
      collisions++;
      for (;;)
	{
	  i = (i+1) % HASH_SIZE;
	  FUNC0 (i != i0);
	  if (hash_tab[i] == 0)
	    break;
	}
    }
  hash_tab[i] = next_index;

  next_index++;
}