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

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int HAS_SYMS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 long FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,unsigned int*) ; 
 int /*<<< orphan*/  syms ; 

__attribute__((used)) static void
FUNC4 (bfd *abfd)
{
  long symcount;
  unsigned int size;

  if ((FUNC1 (abfd) & HAS_SYMS) == 0)
    return;

  symcount = FUNC3 (abfd, FALSE, (void *) &syms, &size);
  if (symcount == 0)
    symcount = FUNC3 (abfd, TRUE /* dynamic */, (void *) &syms, &size);

  if (symcount < 0)
    FUNC0 (FUNC2 (abfd));
}