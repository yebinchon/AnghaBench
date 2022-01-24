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
struct bfd_strtab_hash {int dummy; } ;
typedef  scalar_t__ bfd_size_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (struct bfd_strtab_hash*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfd_strtab_hash*) ; 
 struct bfd_strtab_hash* FUNC3 () ; 

struct bfd_strtab_hash *
FUNC4 (void)
{
  struct bfd_strtab_hash *ret;

  ret = FUNC3 ();
  if (ret != NULL)
    {
      bfd_size_type loc;

      loc = FUNC1 (ret, "", TRUE, FALSE);
      FUNC0 (loc == 0 || loc == (bfd_size_type) -1);
      if (loc == (bfd_size_type) -1)
	{
	  FUNC2 (ret);
	  ret = NULL;
	}
    }
  return ret;
}