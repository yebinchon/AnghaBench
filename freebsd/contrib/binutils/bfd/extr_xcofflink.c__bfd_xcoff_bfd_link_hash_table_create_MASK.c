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
struct bfd_link_hash_table {int dummy; } ;
struct xcoff_link_hash_table {struct bfd_link_hash_table root; int /*<<< orphan*/ * special_sections; void* gc; void* textro; scalar_t__ file_align; int /*<<< orphan*/ * imports; int /*<<< orphan*/ * descriptor_section; int /*<<< orphan*/ * toc_section; int /*<<< orphan*/ * linkage_section; int /*<<< orphan*/  ldhdr; scalar_t__ ldrel_count; int /*<<< orphan*/ * loader_section; int /*<<< orphan*/ * debug_section; int /*<<< orphan*/  debug_strtab; } ;
struct xcoff_link_hash_entry {int dummy; } ;
struct internal_ldhdr {int dummy; } ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int /*<<< orphan*/  full_aouthdr; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct bfd_link_hash_table*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct xcoff_link_hash_table* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct xcoff_link_hash_table*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xcoff_link_hash_newfunc ; 

struct bfd_link_hash_table *
FUNC6 (bfd *abfd)
{
  struct xcoff_link_hash_table *ret;
  bfd_size_type amt = sizeof (* ret);

  ret = FUNC2 (amt);
  if (ret == NULL)
    return NULL;
  if (!FUNC0 (&ret->root, abfd, xcoff_link_hash_newfunc,
				  sizeof (struct xcoff_link_hash_entry)))
    {
      FUNC3 (ret);
      return NULL;
    }

  ret->debug_strtab = FUNC1 ();
  ret->debug_section = NULL;
  ret->loader_section = NULL;
  ret->ldrel_count = 0;
  FUNC4 (&ret->ldhdr, 0, sizeof (struct internal_ldhdr));
  ret->linkage_section = NULL;
  ret->toc_section = NULL;
  ret->descriptor_section = NULL;
  ret->imports = NULL;
  ret->file_align = 0;
  ret->textro = FALSE;
  ret->gc = FALSE;
  FUNC4 (ret->special_sections, 0, sizeof ret->special_sections);

  /* The linker will always generate a full a.out header.  We need to
     record that fact now, before the sizeof_headers routine could be
     called.  */
  FUNC5 (abfd)->full_aouthdr = TRUE;

  return &ret->root;
}