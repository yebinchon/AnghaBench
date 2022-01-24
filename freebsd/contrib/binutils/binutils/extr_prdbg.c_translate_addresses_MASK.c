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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  find_address_in_section ; 
 int /*<<< orphan*/  found ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int line ; 
 int /*<<< orphan*/  pc ; 

__attribute__((used)) static void
FUNC3 (bfd *abfd, char *addr_hex, FILE *f, asymbol **syms)
{
  pc = FUNC1 (addr_hex, NULL, 16);
  found = FALSE;
  FUNC0 (abfd, find_address_in_section, syms);

  if (! found)
    FUNC2 (f, "??");
  else
    FUNC2 (f, "%u", line);
}