#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_4__ {char* name; int flags; int value; int /*<<< orphan*/ * section; } ;
typedef  TYPE_1__ asymbol ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  symptr ; 
 TYPE_1__** symtab ; 
 char* FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5 (bfd *abfd,
	      const char *n1,
	      const char *n2,
	      const char *n3,
	      asection *sec,
	      int flags,
	      int addr)
{
  asymbol *sym;
  char *name = FUNC4 (FUNC3 (n1) + FUNC3 (n2) + FUNC3 (n3) + 1);

  FUNC2 (name, n1);
  FUNC1 (name, n2);
  FUNC1 (name, n3);
  sym = FUNC0 (abfd);
  sym->name = name;
  sym->section = sec;
  sym->flags = flags;
  sym->value = addr;
  symtab[symptr++] = sym;
}