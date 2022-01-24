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
struct elf_link_hash_table {int /*<<< orphan*/  dynobj; } ;
struct elf_backend_data {TYPE_2__* s; } ;
struct bfd_link_info {int dummy; } ;
typedef  void* bfd_vma ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_9__ {int size; int /*<<< orphan*/ * contents; } ;
typedef  TYPE_3__ asection ;
struct TYPE_7__ {void* d_val; } ;
struct TYPE_10__ {TYPE_1__ d_un; void* d_tag; } ;
struct TYPE_8__ {int sizeof_dyn; int /*<<< orphan*/  (* swap_dyn_out ) (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_4__ Elf_Internal_Dyn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct elf_link_hash_table* FUNC3 (struct bfd_link_info*) ; 
 struct elf_backend_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct elf_link_hash_table*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 

bfd_boolean
FUNC7 (struct bfd_link_info *info,
			    bfd_vma tag,
			    bfd_vma val)
{
  struct elf_link_hash_table *hash_table;
  const struct elf_backend_data *bed;
  asection *s;
  bfd_size_type newsize;
  bfd_byte *newcontents;
  Elf_Internal_Dyn dyn;

  hash_table = FUNC3 (info);
  if (! FUNC5 (hash_table))
    return FALSE;

  bed = FUNC4 (hash_table->dynobj);
  s = FUNC1 (hash_table->dynobj, ".dynamic");
  FUNC0 (s != NULL);

  newsize = s->size + bed->s->sizeof_dyn;
  newcontents = FUNC2 (s->contents, newsize);
  if (newcontents == NULL)
    return FALSE;

  dyn.d_tag = tag;
  dyn.d_un.d_val = val;
  bed->s->swap_dyn_out (hash_table->dynobj, &dyn, newcontents + s->size);

  s->size = newsize;
  s->contents = newcontents;

  return TRUE;
}