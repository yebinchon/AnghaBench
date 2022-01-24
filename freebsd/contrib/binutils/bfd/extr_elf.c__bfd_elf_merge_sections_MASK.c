#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {TYPE_1__* input_bfds; int /*<<< orphan*/  hash; } ;
struct bfd_elf_section_data {scalar_t__ sec_info; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_9__ {int flags; TYPE_2__* sections; struct TYPE_9__* link_next; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_10__ {int flags; int /*<<< orphan*/  sec_info_type; int /*<<< orphan*/  output_section; struct TYPE_10__* next; } ;
typedef  TYPE_2__ asection ;
struct TYPE_11__ {int /*<<< orphan*/ * merge_info; } ;

/* Variables and functions */
 int DYNAMIC ; 
 int /*<<< orphan*/  ELF_INFO_TYPE_MERGE ; 
 int /*<<< orphan*/  FALSE ; 
 int SEC_MERGE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ **,TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct bfd_link_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (struct bfd_link_info*) ; 
 struct bfd_elf_section_data* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  merge_sections_remove_hook ; 

bfd_boolean
FUNC6 (bfd *abfd, struct bfd_link_info *info)
{
  bfd *ibfd;
  asection *sec;

  if (!FUNC5 (info->hash))
    return FALSE;

  for (ibfd = info->input_bfds; ibfd != NULL; ibfd = ibfd->link_next)
    if ((ibfd->flags & DYNAMIC) == 0)
      for (sec = ibfd->sections; sec != NULL; sec = sec->next)
	if ((sec->flags & SEC_MERGE) != 0
	    && !FUNC2 (sec->output_section))
	  {
	    struct bfd_elf_section_data *secdata;

	    secdata = FUNC4 (sec);
	    if (! FUNC0 (abfd,
					  &FUNC3 (info)->merge_info,
					  sec, &secdata->sec_info))
	      return FALSE;
	    else if (secdata->sec_info)
	      sec->sec_info_type = ELF_INFO_TYPE_MERGE;
	  }

  if (FUNC3 (info)->merge_info != NULL)
    FUNC1 (abfd, info, FUNC3 (info)->merge_info,
			 merge_sections_remove_hook);
  return TRUE;
}