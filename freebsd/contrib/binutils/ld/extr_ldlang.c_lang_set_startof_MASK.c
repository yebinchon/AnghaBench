#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* section; int /*<<< orphan*/  value; } ;
struct TYPE_11__ {TYPE_1__ def; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_2__ u; } ;
struct TYPE_12__ {int /*<<< orphan*/  size; struct TYPE_12__* next; } ;
typedef  TYPE_3__ asection ;
struct TYPE_14__ {int /*<<< orphan*/  hash; scalar_t__ relocatable; } ;
struct TYPE_13__ {TYPE_3__* sections; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 void* bfd_abs_section_ptr ; 
 char* FUNC1 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__*) ; 
 void* bfd_link_hash_defined ; 
 struct bfd_link_hash_entry* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_link_hash_undefined ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_5__ link_info ; 
 TYPE_4__* output_bfd ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 char* FUNC7 (scalar_t__) ; 

__attribute__((used)) static void
FUNC8 (void)
{
  asection *s;

  if (link_info.relocatable)
    return;

  for (s = output_bfd->sections; s != NULL; s = s->next)
    {
      const char *secname;
      char *buf;
      struct bfd_link_hash_entry *h;

      secname = FUNC1 (output_bfd, s);
      buf = FUNC7 (10 + FUNC6 (secname));

      FUNC5 (buf, ".startof.%s", secname);
      h = FUNC3 (link_info.hash, buf, FALSE, FALSE, TRUE);
      if (h != NULL && h->type == bfd_link_hash_undefined)
	{
	  h->type = bfd_link_hash_defined;
	  h->u.def.value = FUNC2 (output_bfd, s);
	  h->u.def.section = bfd_abs_section_ptr;
	}

      FUNC5 (buf, ".sizeof.%s", secname);
      h = FUNC3 (link_info.hash, buf, FALSE, FALSE, TRUE);
      if (h != NULL && h->type == bfd_link_hash_undefined)
	{
	  h->type = bfd_link_hash_defined;
	  h->u.def.value = FUNC0 (s->size);
	  h->u.def.section = bfd_abs_section_ptr;
	}

      FUNC4 (buf);
    }
}