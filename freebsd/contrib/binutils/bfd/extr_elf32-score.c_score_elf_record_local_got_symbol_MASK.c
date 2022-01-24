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
struct score_got_info {int /*<<< orphan*/  local_gotno; int /*<<< orphan*/  got_entries; } ;
struct TYPE_2__ {int /*<<< orphan*/  addend; } ;
struct score_got_entry {long symndx; scalar_t__ gotidx; TYPE_1__ d; int /*<<< orphan*/ * abfd; } ;
typedef  int /*<<< orphan*/  entry ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INSERT ; 
 int /*<<< orphan*/  TRUE ; 
 struct score_got_entry* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct score_got_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct score_got_entry*,struct score_got_entry*,int) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (bfd *abfd,
                                   long symndx,
                                   bfd_vma addend,
	  			   struct score_got_info *g)
{
  struct score_got_entry entry, **loc;

  entry.abfd = abfd;
  entry.symndx = symndx;
  entry.d.addend = addend;
  loc = (struct score_got_entry **)FUNC1 (g->got_entries, &entry, INSERT);

  if (*loc)
    return TRUE;

  entry.gotidx = g->local_gotno++;

  *loc = FUNC0 (abfd, sizeof(entry));
  if (! *loc)
    return FALSE;

  FUNC2 (*loc, &entry, sizeof (entry));

  return TRUE;
}