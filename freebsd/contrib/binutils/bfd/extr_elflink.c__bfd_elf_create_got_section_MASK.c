#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct elf_link_hash_entry {int dummy; } ;
struct elf_backend_data {scalar_t__ got_header_size; scalar_t__ want_got_sym; scalar_t__ want_got_plt; int /*<<< orphan*/  dynamic_sec_flags; TYPE_1__* s; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  flagword ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ asection ;
struct TYPE_10__ {struct elf_link_hash_entry* hgot; } ;
struct TYPE_8__ {int arch_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SEC_LINKER_CREATED ; 
 int /*<<< orphan*/  TRUE ; 
 struct elf_link_hash_entry* FUNC0 (int /*<<< orphan*/ *,struct bfd_link_info*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  bfd_error_bad_value ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 TYPE_3__* FUNC5 (struct bfd_link_info*) ; 
 struct elf_backend_data* FUNC6 (int /*<<< orphan*/ *) ; 

bfd_boolean
FUNC7 (bfd *abfd, struct bfd_link_info *info)
{
  flagword flags;
  asection *s;
  struct elf_link_hash_entry *h;
  const struct elf_backend_data *bed = FUNC6 (abfd);
  int ptralign;

  /* This function may be called more than once.  */
  s = FUNC1 (abfd, ".got");
  if (s != NULL && (s->flags & SEC_LINKER_CREATED) != 0)
    return TRUE;

  switch (bed->s->arch_size)
    {
    case 32:
      ptralign = 2;
      break;

    case 64:
      ptralign = 3;
      break;

    default:
      FUNC3 (bfd_error_bad_value);
      return FALSE;
    }

  flags = bed->dynamic_sec_flags;

  s = FUNC2 (abfd, ".got", flags);
  if (s == NULL
      || !FUNC4 (abfd, s, ptralign))
    return FALSE;

  if (bed->want_got_plt)
    {
      s = FUNC2 (abfd, ".got.plt", flags);
      if (s == NULL
	  || !FUNC4 (abfd, s, ptralign))
	return FALSE;
    }

  if (bed->want_got_sym)
    {
      /* Define the symbol _GLOBAL_OFFSET_TABLE_ at the start of the .got
	 (or .got.plt) section.  We don't do this in the linker script
	 because we don't want to define the symbol if we are not creating
	 a global offset table.  */
      h = FUNC0 (abfd, info, s, "_GLOBAL_OFFSET_TABLE_");
      FUNC5 (info)->hgot = h;
      if (h == NULL)
	return FALSE;
    }

  /* The first bit of the global offset table is the header.  */
  s->size += bed->got_header_size;

  return TRUE;
}