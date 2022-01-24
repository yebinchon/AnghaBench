#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct reloc_std_external {int dummy; } ;
struct reloc_ext_external {int dummy; } ;
struct bfd_link_info {int /*<<< orphan*/  keep_memory; } ;
struct aout_section_data_struct {int dummy; } ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_8__ {int /*<<< orphan*/  rel_filepos; } ;
typedef  TYPE_1__ asection ;
struct TYPE_9__ {void* relocs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ RELOC_STD_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_6__* FUNC0 (TYPE_1__*) ; 
 struct aout_section_data_struct* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (void*,int,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct aout_section_data_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct bfd_link_info*,int /*<<< orphan*/ *,TYPE_1__*,struct reloc_ext_external*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bfd_link_info*,int /*<<< orphan*/ *,TYPE_1__*,struct reloc_std_external*,int) ; 

__attribute__((used)) static bfd_boolean
FUNC10 (struct bfd_link_info *info,
		   bfd *abfd,
		   asection *sec,
		   bfd_size_type rel_size)
{
  void * relocs;
  void * free_relocs = NULL;

  if (rel_size == 0)
    return TRUE;

  if (! info->keep_memory)
    relocs = free_relocs = FUNC3 (rel_size);
  else
    {
      struct aout_section_data_struct *n;
      bfd_size_type amt = sizeof (struct aout_section_data_struct);

      n = FUNC1 (abfd, amt);
      if (n == NULL)
	relocs = NULL;
      else
	{
	  FUNC7 (sec, n);
	  relocs = FUNC3 (rel_size);
	  FUNC0 (sec)->relocs = relocs;
	}
    }
  if (relocs == NULL)
    return FALSE;

  if (FUNC4 (abfd, sec->rel_filepos, SEEK_SET) != 0
      || FUNC2 (relocs, rel_size, abfd) != rel_size)
    goto error_return;

  if (FUNC6 (abfd) == RELOC_STD_SIZE)
    {
      if (! FUNC9 (info, abfd, sec,
				   (struct reloc_std_external *) relocs,
				   rel_size))
	goto error_return;
    }
  else
    {
      if (! FUNC8 (info, abfd, sec,
				   (struct reloc_ext_external *) relocs,
				   rel_size))
	goto error_return;
    }

  if (free_relocs != NULL)
    FUNC5 (free_relocs);

  return TRUE;

 error_return:
  if (free_relocs != NULL)
    FUNC5 (free_relocs);
  return FALSE;
}