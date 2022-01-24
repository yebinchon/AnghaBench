#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct _arm_elf_section_data {int mapcount; int mapsize; TYPE_1__* map; } ;
typedef  int /*<<< orphan*/  elf32_arm_section_map ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_4__ {char type; int /*<<< orphan*/  vma; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int) ; 
 struct _arm_elf_section_data* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3 (asection *sec, char type, bfd_vma vma)
{
  struct _arm_elf_section_data *sec_data = FUNC2 (sec);
  unsigned int newidx;
  
  if (sec_data->map == NULL)
    {
      sec_data->map = FUNC0 (sizeof (elf32_arm_section_map));
      sec_data->mapcount = 0;
      sec_data->mapsize = 1;
    }
  
  newidx = sec_data->mapcount++;
  
  if (sec_data->mapcount > sec_data->mapsize)
    {
      sec_data->mapsize *= 2;
      sec_data->map = FUNC1 (sec_data->map, sec_data->mapsize
				     * sizeof (elf32_arm_section_map));
    }
  
  sec_data->map[newidx].vma = vma;
  sec_data->map[newidx].type = type;
}