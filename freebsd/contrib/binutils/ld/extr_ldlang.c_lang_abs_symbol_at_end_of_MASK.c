#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  section; scalar_t__ value; } ;
struct TYPE_8__ {TYPE_1__ def; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_2__ u; } ;
struct TYPE_9__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_3__ asection ;
struct TYPE_10__ {int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  bfd_abs_section_ptr ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ bfd_link_hash_defined ; 
 struct bfd_link_hash_entry* FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_link_hash_new ; 
 scalar_t__ bfd_link_hash_undefined ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_4__ link_info ; 
 int /*<<< orphan*/  output_bfd ; 

void
FUNC6 (const char *secname, const char *name)
{
  struct bfd_link_hash_entry *h;

  h = FUNC4 (link_info.hash, name, TRUE, TRUE, TRUE);
  if (h == NULL)
    FUNC5 (FUNC1("%P%F: bfd_link_hash_lookup failed: %E\n"));

  if (h->type == bfd_link_hash_new
      || h->type == bfd_link_hash_undefined)
    {
      asection *sec;

      h->type = bfd_link_hash_defined;

      sec = FUNC2 (output_bfd, secname);
      if (sec == NULL)
	h->u.def.value = 0;
      else
	h->u.def.value = (FUNC3 (output_bfd, sec)
			  + FUNC0 (sec->size));

      h->u.def.section = bfd_abs_section_ptr;
    }
}