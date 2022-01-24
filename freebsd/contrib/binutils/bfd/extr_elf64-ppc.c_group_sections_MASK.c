#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ppc_link_hash_table {int top_index; TYPE_2__** input_list; TYPE_1__* stub_group; } ;
typedef  scalar_t__ bfd_vma ;
typedef  int bfd_size_type ;
typedef  int bfd_boolean ;
struct TYPE_11__ {int size; size_t id; int output_offset; int /*<<< orphan*/  owner; } ;
typedef  TYPE_2__ asection ;
struct TYPE_12__ {scalar_t__ has_14bit_branch; } ;
struct TYPE_10__ {scalar_t__ toc_off; TYPE_2__* link_sec; } ;

/* Variables and functions */
 int FALSE ; 
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 TYPE_4__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6 (struct ppc_link_hash_table *htab,
		bfd_size_type stub_group_size,
		bfd_boolean stubs_always_before_branch)
{
  asection **list;
  bfd_size_type stub14_group_size;
  bfd_boolean suppress_size_errors;

  suppress_size_errors = FALSE;
  stub14_group_size = stub_group_size;
  if (stub_group_size == 1)
    {
      /* Default values.  */
      if (stubs_always_before_branch)
	{
	  stub_group_size = 0x1e00000;
	  stub14_group_size = 0x7800;
	}
      else
	{
	  stub_group_size = 0x1c00000;
	  stub14_group_size = 0x7000;
	}
      suppress_size_errors = TRUE;
    }

  list = htab->input_list + htab->top_index;
  do
    {
      asection *tail = *list;
      while (tail != NULL)
	{
	  asection *curr;
	  asection *prev;
	  bfd_size_type total;
	  bfd_boolean big_sec;
	  bfd_vma curr_toc;

	  curr = tail;
	  total = tail->size;
	  big_sec = total > (FUNC4 (tail)->has_14bit_branch
			     ? stub14_group_size : stub_group_size);
	  if (big_sec && !suppress_size_errors)
	    FUNC2) (FUNC1("%B section %A exceeds stub group size"),
				     tail->owner, tail);
	  curr_toc = htab->stub_group[tail->id].toc_off;

	  while ((prev = FUNC0 (curr)) != NULL
		 && ((total += curr->output_offset - prev->output_offset)
		     < (FUNC4 (prev)->has_14bit_branch
			? stub14_group_size : stub_group_size))
		 && htab->stub_group[prev->id].toc_off == curr_toc)
	    curr = prev;

	  /* OK, the size from the start of CURR to the end is less
	     than stub_group_size and thus can be handled by one stub
	     section.  (or the tail section is itself larger than
	     stub_group_size, in which case we may be toast.)  We
	     should really be keeping track of the total size of stubs
	     added here, as stubs contribute to the final output
	     section size.  That's a little tricky, and this way will
	     only break if stubs added make the total size more than
	     2^25, ie. for the default stub_group_size, if stubs total
	     more than 2097152 bytes, or nearly 75000 plt call stubs.  */
	  do
	    {
	      prev = FUNC0 (tail);
	      /* Set up this stub group.  */
	      htab->stub_group[tail->id].link_sec = curr;
	    }
	  while (tail != curr && (tail = prev) != NULL);

	  /* But wait, there's more!  Input sections up to stub_group_size
	     bytes before the stub section can be handled by it too.
	     Don't do this if we have a really large section after the
	     stubs, as adding more stubs increases the chance that
	     branches may not reach into the stub section.  */
	  if (!stubs_always_before_branch && !big_sec)
	    {
	      total = 0;
	      while (prev != NULL
		     && ((total += tail->output_offset - prev->output_offset)
			 < (FUNC4 (prev)->has_14bit_branch
			    ? stub14_group_size : stub_group_size))
		     && htab->stub_group[prev->id].toc_off == curr_toc)
		{
		  tail = prev;
		  prev = FUNC0 (tail);
		  htab->stub_group[tail->id].link_sec = curr;
		}
	    }
	  tail = prev;
	}
    }
  while (list-- != htab->input_list);
  FUNC3 (htab->input_list);
#undef PREV_SEC
}