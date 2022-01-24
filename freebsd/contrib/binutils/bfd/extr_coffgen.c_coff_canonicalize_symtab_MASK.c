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
typedef  int /*<<< orphan*/  coff_symbol_type ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

long
FUNC3 (bfd *abfd, asymbol **alocation)
{
  unsigned int counter;
  coff_symbol_type *symbase;
  coff_symbol_type **location = (coff_symbol_type **) alocation;

  if (!FUNC0 (abfd))
    return -1;

  symbase = FUNC2 (abfd);
  counter = FUNC1 (abfd);
  while (counter-- > 0)
    *location++ = symbase++;

  *location = NULL;

  return FUNC1 (abfd);
}