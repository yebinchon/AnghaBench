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
struct disassemble_info {int dummy; } ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,struct disassemble_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2 (bfd_vma vma, struct disassemble_info * info)
{
  asymbol * sym;

  sym = FUNC1 (vma, info, NULL);

  return (sym != NULL && (FUNC0 (sym) == vma));
}