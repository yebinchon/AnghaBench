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
struct elf_backend_data {scalar_t__ arch; scalar_t__ relocs_compatible; } ;
typedef  int /*<<< orphan*/  bfd_target ;
typedef  int bfd_boolean ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 struct elf_backend_data* FUNC0 (int /*<<< orphan*/  const*) ; 

bfd_boolean
FUNC1 (const bfd_target *input,
			    const bfd_target *output)
{
  const struct elf_backend_data *obed, *ibed;

  if (input == output)
    return TRUE;

  ibed = FUNC0 (input);
  obed = FUNC0 (output);

  if (ibed->arch != obed->arch)
    return FALSE;

  /* If both backends are using this function, deem them compatible.  */
  return ibed->relocs_compatible == obed->relocs_compatible;
}