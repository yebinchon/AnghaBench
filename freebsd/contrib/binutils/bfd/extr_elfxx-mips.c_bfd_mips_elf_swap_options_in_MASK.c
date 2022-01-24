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
struct TYPE_6__ {int /*<<< orphan*/  info; int /*<<< orphan*/  section; int /*<<< orphan*/  size; int /*<<< orphan*/  kind; } ;
struct TYPE_5__ {int /*<<< orphan*/  info; int /*<<< orphan*/  section; void* size; void* kind; } ;
typedef  TYPE_1__ Elf_Internal_Options ;
typedef  TYPE_2__ Elf_External_Options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3 (bfd *abfd, const Elf_External_Options *ex,
			      Elf_Internal_Options *in)
{
  in->kind = FUNC2 (abfd, ex->kind);
  in->size = FUNC2 (abfd, ex->size);
  in->section = FUNC0 (abfd, ex->section);
  in->info = FUNC1 (abfd, ex->info);
}