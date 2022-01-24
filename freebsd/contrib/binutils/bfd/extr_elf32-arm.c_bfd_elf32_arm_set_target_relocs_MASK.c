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
struct elf32_arm_link_hash_table {int target1_is_rel; int fix_v4bx; int use_blx; int pic_veneer; int /*<<< orphan*/  vfp11_fix; int /*<<< orphan*/  target2_reloc; } ;
struct bfd_link_info {int dummy; } ;
struct bfd {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_arm_vfp11_fix ;
struct TYPE_2__ {int no_enum_size_warning; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_ARM_ABS32 ; 
 int /*<<< orphan*/  R_ARM_GOT_PREL ; 
 int /*<<< orphan*/  R_ARM_REL32 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct elf32_arm_link_hash_table* FUNC2 (struct bfd_link_info*) ; 
 TYPE_1__* FUNC3 (struct bfd*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

void
FUNC5 (struct bfd *output_bfd,
				 struct bfd_link_info *link_info,
				 int target1_is_rel,
				 char * target2_type,
                                 int fix_v4bx,
				 int use_blx,
                                 bfd_arm_vfp11_fix vfp11_fix,
				 int no_enum_warn, int pic_veneer)
{
  struct elf32_arm_link_hash_table *globals;

  globals = FUNC2 (link_info);

  globals->target1_is_rel = target1_is_rel;
  if (FUNC4 (target2_type, "rel") == 0)
    globals->target2_reloc = R_ARM_REL32;
  else if (FUNC4 (target2_type, "abs") == 0)
    globals->target2_reloc = R_ARM_ABS32;
  else if (FUNC4 (target2_type, "got-rel") == 0)
    globals->target2_reloc = R_ARM_GOT_PREL;
  else
    {
      FUNC1 (FUNC0("Invalid TARGET2 relocation type '%s'."),
			  target2_type);
    }
  globals->fix_v4bx = fix_v4bx;
  globals->use_blx |= use_blx;
  globals->vfp11_fix = vfp11_fix;
  globals->pic_veneer = pic_veneer;

  FUNC3 (output_bfd)->no_enum_size_warning = no_enum_warn;
}