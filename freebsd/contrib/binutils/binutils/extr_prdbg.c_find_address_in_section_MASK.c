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
typedef  scalar_t__ bfd_vma ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int SEC_ALLOC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  filename ; 
 scalar_t__ found ; 
 int /*<<< orphan*/  functionname ; 
 int /*<<< orphan*/  line ; 
 scalar_t__ pc ; 

__attribute__((used)) static void
FUNC4 (bfd *abfd, asection *section, void *data)
{
  bfd_vma vma;
  bfd_size_type size;
  asymbol **syms = (asymbol **) data;

  if (found)
    return;

  if ((FUNC1 (abfd, section) & SEC_ALLOC) == 0)
    return;

  vma = FUNC3 (abfd, section);
  if (pc < vma)
    return;

  size = FUNC2 (section);
  if (pc >= vma + size)
    return;

  found = FUNC0 (abfd, section, syms, pc - vma,
				 &filename, &functionname, &line);
}