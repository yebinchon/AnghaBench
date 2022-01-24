#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {int /*<<< orphan*/  vs_vers; } ;
struct TYPE_5__ {int /*<<< orphan*/  vs_vers; } ;
typedef  TYPE_1__ Elf_Internal_Versym ;
typedef  TYPE_2__ Elf_External_Versym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1 (bfd *abfd,
			  const Elf_Internal_Versym *src,
			  Elf_External_Versym *dst)
{
  FUNC0 (abfd, src->vs_vers, dst->vs_vers);
}