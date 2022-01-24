#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct bfd_link_info {TYPE_2__* input_bfds; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_14__ {struct TYPE_14__* link_next; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_15__ {scalar_t__ total_got_size; TYPE_2__* got_link_next; TYPE_1__* got; TYPE_2__* gotobj; } ;
struct TYPE_13__ {scalar_t__ size; } ;
struct TYPE_12__ {TYPE_2__* got_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MAX_GOT_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 
 TYPE_10__* FUNC3 (struct bfd_link_info*) ; 
 TYPE_8__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfd_link_info*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC9 (struct bfd_link_info *info)
{
  bfd *i, *got_list, *cur_got_obj = NULL;

  got_list = FUNC3 (info)->got_list;

  /* On the first time through, pretend we have an existing got list
     consisting of all of the input files.  */
  if (got_list == NULL)
    {
      for (i = info->input_bfds; i ; i = i->link_next)
	{
	  bfd *this_got = FUNC4 (i)->gotobj;
	  if (this_got == NULL)
	    continue;

	  /* We are assuming no merging has yet occurred.  */
	  FUNC0 (this_got == i);

          if (FUNC4 (this_got)->total_got_size > MAX_GOT_SIZE)
	    {
	      /* Yikes! A single object file has too many entries.  */
	      FUNC2)
	        (FUNC1("%B: .got subsegment exceeds 64K (size %d)"),
	         i, FUNC4 (this_got)->total_got_size);
	      return FALSE;
	    }

	  if (got_list == NULL)
	    got_list = this_got;
	  else
	    FUNC4(cur_got_obj)->got_link_next = this_got;
	  cur_got_obj = this_got;
	}

      /* Strange degenerate case of no got references.  */
      if (got_list == NULL)
	return TRUE;

      FUNC3 (info)->got_list = got_list;
    }

  cur_got_obj = got_list;
  i = FUNC4(cur_got_obj)->got_link_next;
  while (i != NULL)
    {
      if (FUNC6 (cur_got_obj, i))
	{
	  FUNC7 (cur_got_obj, i);

	  FUNC4(i)->got->size = 0;
	  i = FUNC4(i)->got_link_next;
	  FUNC4(cur_got_obj)->got_link_next = i;
	}
      else
	{
	  cur_got_obj = i;
	  i = FUNC4(i)->got_link_next;
	}
    }

  /* Once the gots have been merged, fill in the got offsets for
     everything therein.  */
  FUNC5 (info);

  return TRUE;
}