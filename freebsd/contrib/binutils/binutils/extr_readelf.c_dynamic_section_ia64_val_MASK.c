#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  d_ptr; } ;
struct TYPE_5__ {int d_tag; TYPE_1__ d_un; } ;
typedef  TYPE_2__ Elf_Internal_Dyn ;

/* Variables and functions */
#define  DT_IA_64_PLT_RESERVE 128 
 int /*<<< orphan*/  PREFIX_HEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

__attribute__((used)) static void
FUNC3 (Elf_Internal_Dyn *entry)
{
  switch (entry->d_tag)
    {
    case DT_IA_64_PLT_RESERVE:
      /* First 3 slots reserved.  */
      FUNC0 (entry->d_un.d_ptr, PREFIX_HEX);
      FUNC1 (" -- ");
      FUNC0 (entry->d_un.d_ptr + (3 * 8), PREFIX_HEX);
      break;

    default:
      FUNC0 (entry->d_un.d_ptr, PREFIX_HEX);
      break;
    }
  FUNC2 ('\n');
}