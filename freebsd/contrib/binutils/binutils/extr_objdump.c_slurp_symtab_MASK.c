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
 int HAS_SYMS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ symcount ; 
 int /*<<< orphan*/ ** FUNC5 (long) ; 

__attribute__((used)) static asymbol **
FUNC6 (bfd *abfd)
{
  asymbol **sy = NULL;
  long storage;

  if (!(FUNC2 (abfd) & HAS_SYMS))
    {
      symcount = 0;
      return NULL;
    }

  storage = FUNC4 (abfd);
  if (storage < 0)
    FUNC1 (FUNC3 (abfd));
  if (storage)
    sy = FUNC5 (storage);

  symcount = FUNC0 (abfd, sy);
  if (symcount < 0)
    FUNC1 (FUNC3 (abfd));
  return sy;
}