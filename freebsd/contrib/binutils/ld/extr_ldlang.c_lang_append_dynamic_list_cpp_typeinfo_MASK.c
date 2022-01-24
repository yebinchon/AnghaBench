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
struct bfd_elf_version_expr {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (char const**) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (struct bfd_elf_version_expr*) ; 
 struct bfd_elf_version_expr* FUNC2 (struct bfd_elf_version_expr*,char const*,char*,int /*<<< orphan*/ ) ; 

void
FUNC3 (void)
{
  const char * symbols [] =
    {
      "typeinfo name for*",
      "typeinfo for*"
    };
  struct bfd_elf_version_expr *dynamic = NULL;
  unsigned int i;

  for (i = 0; i < FUNC0 (symbols); i++)
    dynamic = FUNC2 (dynamic, symbols [i], "C++",
				     FALSE);

  FUNC1 (dynamic);
}