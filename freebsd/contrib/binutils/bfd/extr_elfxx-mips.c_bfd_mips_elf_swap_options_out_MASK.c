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
struct TYPE_5__ {int /*<<< orphan*/  info; int /*<<< orphan*/  section; int /*<<< orphan*/  size; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ Elf_Internal_Options ;
typedef  TYPE_2__ Elf_External_Options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3 (bfd *abfd, const Elf_Internal_Options *in,
			       Elf_External_Options *ex)
{
  FUNC2 (abfd, in->kind, ex->kind);
  FUNC2 (abfd, in->size, ex->size);
  FUNC0 (abfd, in->section, ex->section);
  FUNC1 (abfd, in->info, ex->info);
}