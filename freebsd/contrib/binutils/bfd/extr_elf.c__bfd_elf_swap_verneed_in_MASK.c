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
struct TYPE_6__ {int /*<<< orphan*/  vn_next; int /*<<< orphan*/  vn_aux; int /*<<< orphan*/  vn_file; int /*<<< orphan*/  vn_cnt; int /*<<< orphan*/  vn_version; } ;
struct TYPE_5__ {void* vn_next; void* vn_aux; void* vn_file; void* vn_cnt; void* vn_version; } ;
typedef  TYPE_1__ Elf_Internal_Verneed ;
typedef  TYPE_2__ Elf_External_Verneed ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2 (bfd *abfd,
			  const Elf_External_Verneed *src,
			  Elf_Internal_Verneed *dst)
{
  dst->vn_version = FUNC0 (abfd, src->vn_version);
  dst->vn_cnt     = FUNC0 (abfd, src->vn_cnt);
  dst->vn_file    = FUNC1 (abfd, src->vn_file);
  dst->vn_aux     = FUNC1 (abfd, src->vn_aux);
  dst->vn_next    = FUNC1 (abfd, src->vn_next);
}