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
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 long FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  bfd_error_no_symbols ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC4 (long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 

long
FUNC7 (bfd *abfd,
			       bfd_boolean dynamic,
			       void **minisymsp,
			       unsigned int *sizep)
{
  long storage;
  asymbol **syms = NULL;
  long symcount;

  if (dynamic)
    storage = FUNC2 (abfd);
  else
    storage = FUNC3 (abfd);
  if (storage < 0)
    goto error_return;
  if (storage == 0)
    return 0;

  syms = FUNC4 (storage);
  if (syms == NULL)
    goto error_return;

  if (dynamic)
    symcount = FUNC0 (abfd, syms);
  else
    symcount = FUNC1 (abfd, syms);
  if (symcount < 0)
    goto error_return;

  *minisymsp = syms;
  *sizep = sizeof (asymbol *);
  return symcount;

 error_return:
  FUNC5 (bfd_error_no_symbols);
  if (syms != NULL)
    FUNC6 (syms);
  return -1;
}