#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct elf_backend_data {int (* elf_backend_sym_is_global ) (int /*<<< orphan*/ *,TYPE_1__*) ;} ;
typedef  int bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {int flags; } ;
typedef  TYPE_1__ asymbol ;

/* Variables and functions */
 int BSF_GLOBAL ; 
 int BSF_WEAK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct elf_backend_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (bfd *abfd, asymbol *sym)
{
  /* If the backend has a special mapping, use it.  */
  const struct elf_backend_data *bed = FUNC3 (abfd);
  if (bed->elf_backend_sym_is_global)
    return (*bed->elf_backend_sym_is_global) (abfd, sym);

  return ((sym->flags & (BSF_GLOBAL | BSF_WEAK)) != 0
	  || FUNC2 (FUNC0 (sym))
	  || FUNC1 (FUNC0 (sym)));
}