#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {int /*<<< orphan*/  hash; scalar_t__ relocatable; } ;
struct TYPE_4__ {int /*<<< orphan*/ * abfd; } ;
struct TYPE_5__ {TYPE_1__ undef; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_6__ {int /*<<< orphan*/  build_constructors; scalar_t__ warn_constructors; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_RELOC_CTOR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char FUNC1 (int /*<<< orphan*/ *) ; 
 struct bfd_link_hash_entry* FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ bfd_link_hash_new ; 
 scalar_t__ bfd_link_hash_undefined ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__ config ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (struct bfd_link_hash_entry*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * output_bfd ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (struct bfd_link_info *info,
		      bfd_boolean constructor,
		      const char *name,
		      bfd *abfd,
		      asection *section,
		      bfd_vma value)
{
  char *s;
  struct bfd_link_hash_entry *h;
  char set_name[1 + sizeof "__CTOR_LIST__"];

  if (config.warn_constructors)
    FUNC4 (FUNC0("%P: warning: global constructor %s used\n"), name);

  if (! config.build_constructors)
    return TRUE;

  /* Ensure that BFD_RELOC_CTOR exists now, so that we can give a
     useful error message.  */
  if (FUNC3 (output_bfd, BFD_RELOC_CTOR) == NULL
      && (info->relocatable
	  || FUNC3 (abfd, BFD_RELOC_CTOR) == NULL))
    FUNC4 (FUNC0("%P%F: BFD backend error: BFD_RELOC_CTOR unsupported\n"));

  s = set_name;
  if (FUNC1 (abfd) != '\0')
    *s++ = FUNC1 (abfd);
  if (constructor)
    FUNC6 (s, "__CTOR_LIST__");
  else
    FUNC6 (s, "__DTOR_LIST__");

  h = FUNC2 (info->hash, set_name, TRUE, TRUE, TRUE);
  if (h == (struct bfd_link_hash_entry *) NULL)
    FUNC4 (FUNC0("%P%F: bfd_link_hash_lookup failed: %E\n"));
  if (h->type == bfd_link_hash_new)
    {
      h->type = bfd_link_hash_undefined;
      h->u.undef.abfd = abfd;
      /* We don't call bfd_link_add_undef to add this to the list of
	 undefined symbols because we are going to define it
	 ourselves.  */
    }

  FUNC5 (h, BFD_RELOC_CTOR, name, section, value);
  return TRUE;
}