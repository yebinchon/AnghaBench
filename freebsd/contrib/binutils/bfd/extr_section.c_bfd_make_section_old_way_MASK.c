#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {char const* name; } ;
struct section_hash_entry {TYPE_2__ section; } ;
struct TYPE_14__ {int /*<<< orphan*/  section_htab; scalar_t__ output_has_begun; } ;
typedef  TYPE_1__ bfd ;
typedef  TYPE_2__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_ABS_SECTION_NAME ; 
 int /*<<< orphan*/  BFD_COM_SECTION_NAME ; 
 int /*<<< orphan*/  BFD_IND_SECTION_NAME ; 
 int /*<<< orphan*/  BFD_SEND (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  BFD_UND_SECTION_NAME ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  _new_section_hook ; 
 TYPE_2__* bfd_abs_section_ptr ; 
 TYPE_2__* bfd_com_section_ptr ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 TYPE_2__* bfd_ind_section_ptr ; 
 TYPE_2__* bfd_section_init (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  bfd_set_error (int /*<<< orphan*/ ) ; 
 TYPE_2__* bfd_und_section_ptr ; 
 struct section_hash_entry* section_hash_lookup (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ strcmp (char const*,int /*<<< orphan*/ ) ; 

asection *
bfd_make_section_old_way (bfd *abfd, const char *name)
{
  asection *newsect;

  if (abfd->output_has_begun)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return NULL;
    }

  if (strcmp (name, BFD_ABS_SECTION_NAME) == 0)
    newsect = bfd_abs_section_ptr;
  else if (strcmp (name, BFD_COM_SECTION_NAME) == 0)
    newsect = bfd_com_section_ptr;
  else if (strcmp (name, BFD_UND_SECTION_NAME) == 0)
    newsect = bfd_und_section_ptr;
  else if (strcmp (name, BFD_IND_SECTION_NAME) == 0)
    newsect = bfd_ind_section_ptr;
  else
    {
      struct section_hash_entry *sh;

      sh = section_hash_lookup (&abfd->section_htab, name, TRUE, FALSE);
      if (sh == NULL)
	return NULL;

      newsect = &sh->section;
      if (newsect->name != NULL)
	{
	  /* Section already exists.  */
	  return newsect;
	}

      newsect->name = name;
      return bfd_section_init (abfd, newsect);
    }

  /* Call new_section_hook when "creating" the standard abs, com, und
     and ind sections to tack on format specific section data.
     Also, create a proper section symbol.  */
  if (! BFD_SEND (abfd, _new_section_hook, (abfd, newsect)))
    return NULL;
  return newsect;
}