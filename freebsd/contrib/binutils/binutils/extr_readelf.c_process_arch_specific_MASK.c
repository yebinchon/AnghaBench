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
struct TYPE_2__ {int e_machine; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  EM_ARM 131 
#define  EM_MIPS 130 
#define  EM_MIPS_RS3_LE 129 
#define  EM_PPC 128 
 int /*<<< orphan*/  do_arch ; 
 TYPE_1__ elf_header ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3 (FILE *file)
{
  if (! do_arch)
    return 1;

  switch (elf_header.e_machine)
    {
    case EM_ARM:
      return FUNC0 (file);
    case EM_MIPS:
    case EM_MIPS_RS3_LE:
      return FUNC1 (file);
      break;
    case EM_PPC:
      return FUNC2 (file);
      break;
    default:
      break;
    }
  return 1;
}