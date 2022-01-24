#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; int /*<<< orphan*/  start_address; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_IS_RELAXABLE ; 
 int /*<<< orphan*/  DYNAMIC ; 
 int /*<<< orphan*/  D_PAGED ; 
 int /*<<< orphan*/  EXEC_P ; 
 int /*<<< orphan*/  HAS_DEBUG ; 
 int /*<<< orphan*/  HAS_LINENO ; 
 int /*<<< orphan*/  HAS_LOAD_PAGE ; 
 int /*<<< orphan*/  HAS_LOCALS ; 
 int /*<<< orphan*/  HAS_RELOC ; 
 int /*<<< orphan*/  HAS_SYMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WP_TEXT ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7 (bfd *abfd)
{
  char *comma = "";

  FUNC6 (FUNC1("architecture: %s, "),
	  FUNC4 (FUNC2 (abfd),
				   FUNC3 (abfd)));
  FUNC6 (FUNC1("flags 0x%08x:\n"), abfd->flags);

#define PF(x, y)    if (abfd->flags & x) {printf("%s%s", comma, y); comma=", ";}
  PF (HAS_RELOC, "HAS_RELOC");
  PF (EXEC_P, "EXEC_P");
  PF (HAS_LINENO, "HAS_LINENO");
  PF (HAS_DEBUG, "HAS_DEBUG");
  PF (HAS_SYMS, "HAS_SYMS");
  PF (HAS_LOCALS, "HAS_LOCALS");
  PF (DYNAMIC, "DYNAMIC");
  PF (WP_TEXT, "WP_TEXT");
  PF (D_PAGED, "D_PAGED");
  PF (BFD_IS_RELAXABLE, "BFD_IS_RELAXABLE");
  PF (HAS_LOAD_PAGE, "HAS_LOAD_PAGE");
  FUNC6 (FUNC1("\nstart address 0x"));
  FUNC5 (abfd, abfd->start_address);
  FUNC6 ("\n");
}