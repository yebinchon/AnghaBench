#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ecoff_symbol_type ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;
struct TYPE_2__ {int /*<<< orphan*/ * canonical_symbols; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

long
FUNC3 (bfd *abfd, asymbol **alocation)
{
  unsigned int counter = 0;
  ecoff_symbol_type *symbase;
  ecoff_symbol_type **location = (ecoff_symbol_type **) alocation;

  if (! FUNC0 (abfd))
    return -1;
  if (FUNC1 (abfd) == 0)
    return 0;

  symbase = FUNC2 (abfd)->canonical_symbols;
  while (counter < FUNC1 (abfd))
    {
      *(location++) = symbase++;
      counter++;
    }
  *location++ = NULL;
  return FUNC1 (abfd);
}