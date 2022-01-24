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
struct TYPE_6__ {int /*<<< orphan*/  reserved1; int /*<<< orphan*/  reserved0; int /*<<< orphan*/  offset; int /*<<< orphan*/  id2; int /*<<< orphan*/  num; int /*<<< orphan*/  id1; } ;
struct TYPE_5__ {int /*<<< orphan*/  reserved1; int /*<<< orphan*/  reserved0; int /*<<< orphan*/  offset; int /*<<< orphan*/  id2; int /*<<< orphan*/  num; int /*<<< orphan*/  id1; } ;
typedef  TYPE_1__ Elf32_compact_rel ;
typedef  TYPE_2__ Elf32_External_compact_rel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (bfd *abfd, const Elf32_compact_rel *in,
				Elf32_External_compact_rel *ex)
{
  FUNC0 (abfd, in->id1, ex->id1);
  FUNC0 (abfd, in->num, ex->num);
  FUNC0 (abfd, in->id2, ex->id2);
  FUNC0 (abfd, in->offset, ex->offset);
  FUNC0 (abfd, in->reserved0, ex->reserved0);
  FUNC0 (abfd, in->reserved1, ex->reserved1);
}