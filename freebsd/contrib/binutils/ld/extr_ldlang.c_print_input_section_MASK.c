#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ bfd_vma ;
typedef  scalar_t__ bfd_size_type ;
struct TYPE_8__ {scalar_t__ size; scalar_t__ name; scalar_t__ rawsize; TYPE_1__* output_section; int /*<<< orphan*/  owner; scalar_t__ output_offset; } ;
typedef  TYPE_2__ asection ;
struct TYPE_9__ {int /*<<< orphan*/  hash; scalar_t__ reduce_memory_overheads; } ;
struct TYPE_7__ {scalar_t__ owner; scalar_t__ vma; } ;

/* Variables and functions */
 int SECTION_NAME_MAP_LENGTH ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_5__ link_info ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,...) ; 
 scalar_t__ output_bfd ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ print_dot ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  print_one_symbol ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (scalar_t__) ; 

__attribute__((used)) static void
FUNC9 (asection *i)
{
  bfd_size_type size = i->size;
  int len;
  bfd_vma addr;

  FUNC3 ();

  FUNC7 ();
  FUNC4 ("%s", i->name);

  len = 1 + FUNC8 (i->name);
  if (len >= SECTION_NAME_MAP_LENGTH - 1)
    {
      FUNC6 ();
      len = 0;
    }
  while (len < SECTION_NAME_MAP_LENGTH)
    {
      FUNC7 ();
      ++len;
    }

  if (i->output_section != NULL && i->output_section->owner == output_bfd)
    addr = i->output_section->vma + i->output_offset;
  else
    {
      addr = print_dot;
      size = 0;
    }

  FUNC4 ("0x%V %W %B\n", addr, FUNC0 (size), i->owner);

  if (size != i->rawsize && i->rawsize != 0)
    {
      len = SECTION_NAME_MAP_LENGTH + 3;
#ifdef BFD64
      len += 16;
#else
      len += 8;
#endif
      while (len > 0)
	{
	  FUNC7 ();
	  --len;
	}

      FUNC4 (FUNC1("%W (size before relaxing)\n"), i->rawsize);
    }

  if (i->output_section != NULL && i->output_section->owner == output_bfd)
    {
      if (link_info.reduce_memory_overheads)
	FUNC2 (link_info.hash, print_one_symbol, i);
      else
	FUNC5 (i);

      print_dot = addr + FUNC0 (size);
    }
}