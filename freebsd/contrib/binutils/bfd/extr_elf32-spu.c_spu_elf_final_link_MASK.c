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
struct spu_link_hash_table {int /*<<< orphan*/  emit_stack_syms; scalar_t__ stack_analysis; } ;
struct bfd_link_info {TYPE_1__* callbacks; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int /*<<< orphan*/  (* einfo ) (char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bfd_link_info*,int /*<<< orphan*/ ) ; 
 struct spu_link_hash_table* FUNC2 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *output_bfd, struct bfd_link_info *info)
{
  struct spu_link_hash_table *htab = FUNC2 (info);

  if (htab->stack_analysis
      && !FUNC1 (output_bfd, info, htab->emit_stack_syms))
    info->callbacks->einfo ("%X%P: stack analysis error: %E\n");

  return FUNC0 (output_bfd, info);
}