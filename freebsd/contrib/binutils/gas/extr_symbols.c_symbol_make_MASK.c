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
typedef  int /*<<< orphan*/  valueT ;
typedef  int /*<<< orphan*/  symbolS ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  undefined_section ; 
 int /*<<< orphan*/  zero_address_frag ; 

symbolS *
FUNC2 (const char *name)
{
  symbolS *symbolP;

  /* Let the machine description default it, e.g. for register names.  */
  symbolP = FUNC0 ((char *) name);

  if (!symbolP)
    symbolP = FUNC1 (name, undefined_section, (valueT) 0, &zero_address_frag);

  return (symbolP);
}