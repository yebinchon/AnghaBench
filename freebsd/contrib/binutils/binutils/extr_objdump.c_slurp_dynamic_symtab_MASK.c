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
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 int DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ dynsymcount ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC7 (long) ; 

__attribute__((used)) static asymbol **
FUNC8 (bfd *abfd)
{
  asymbol **sy = NULL;
  long storage;

  storage = FUNC3 (abfd);
  if (storage < 0)
    {
      if (!(FUNC4 (abfd) & DYNAMIC))
	{
	  FUNC6 (FUNC0("%s: not a dynamic object"), FUNC5 (abfd));
	  dynsymcount = 0;
	  return NULL;
	}

      FUNC2 (FUNC5 (abfd));
    }
  if (storage)
    sy = FUNC7 (storage);

  dynsymcount = FUNC1 (abfd, sy);
  if (dynsymcount < 0)
    FUNC2 (FUNC5 (abfd));
  return sy;
}