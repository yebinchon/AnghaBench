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
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  creator; } ;
struct TYPE_7__ {TYPE_5__ root; } ;
struct ppc_link_hash_table {scalar_t__ twiddled_syms; TYPE_2__ elf; struct ppc_link_hash_entry* dot_syms; } ;
struct TYPE_6__ {struct ppc_link_hash_entry* next_dot_sym; } ;
struct ppc_link_hash_entry {TYPE_1__ u; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_8__ {int /*<<< orphan*/  xvec; } ;
typedef  TYPE_3__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ppc_link_hash_entry*,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct ppc_link_hash_table* FUNC3 (struct bfd_link_info*) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *ibfd, struct bfd_link_info *info)
{
  struct ppc_link_hash_table *htab;
  struct ppc_link_hash_entry **p, *eh;

  htab = FUNC3 (info);
  if (!FUNC2 (htab->elf.root.creator))
    return TRUE;

  if (FUNC2 (ibfd->xvec))
    {
      p = &htab->dot_syms;
      while ((eh = *p) != NULL)
	{
	  *p = NULL;
	  if (!FUNC0 (eh, info))
	    return FALSE;
	  p = &eh->u.next_dot_sym;
	}
    }

  /* Clear the list for non-ppc64 input files.  */
  p = &htab->dot_syms;
  while ((eh = *p) != NULL)
    {
      *p = NULL;
      p = &eh->u.next_dot_sym;
    }

  /* We need to fix the undefs list for any syms we have twiddled to
     undef_weak.  */
  if (htab->twiddled_syms)
    {
      FUNC1 (&htab->elf.root);
      htab->twiddled_syms = 0;
    }
  return TRUE;
}