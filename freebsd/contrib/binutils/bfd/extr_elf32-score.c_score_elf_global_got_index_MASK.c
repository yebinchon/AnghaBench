#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct score_got_info {long local_gotno; TYPE_1__* global_gotsym; } ;
struct elf_link_hash_entry {long dynindx; } ;
typedef  long bfd_vma ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {long size; } ;
typedef  TYPE_2__ asection ;
struct TYPE_4__ {long dynindx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 struct score_got_info* FUNC2 (int /*<<< orphan*/ *,TYPE_2__**) ; 

__attribute__((used)) static bfd_vma
FUNC3 (bfd *abfd, struct elf_link_hash_entry *h)
{
  bfd_vma index;
  asection *sgot;
  struct score_got_info *g;
  long global_got_dynindx = 0;

  g = FUNC2 (abfd, &sgot);
  if (g->global_gotsym != NULL)
    global_got_dynindx = g->global_gotsym->dynindx;

  /* Once we determine the global GOT entry with the lowest dynamic
     symbol table index, we must put all dynamic symbols with greater
     indices into the GOT.  That makes it easy to calculate the GOT
     offset.  */
  FUNC0 (h->dynindx >= global_got_dynindx);
  index = ((h->dynindx - global_got_dynindx + g->local_gotno) * FUNC1 (abfd));
  FUNC0 (index < sgot->size);

  return index;
}