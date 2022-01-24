#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* string; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ root; } ;
struct xcoff_link_hash_entry {int flags; scalar_t__ smclas; struct xcoff_link_hash_entry* descriptor; TYPE_2__ root; } ;
struct bfd_link_info {int dummy; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int XCOFF_DESCRIPTOR ; 
 int XCOFF_EXPORT ; 
 scalar_t__ XMC_PR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_link_hash_defined ; 
 scalar_t__ bfd_link_hash_defweak ; 
 char* FUNC1 (scalar_t__) ; 
 scalar_t__ bfd_target_xcoff_flavour ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfd_link_info*) ; 
 struct xcoff_link_hash_entry* FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bfd_link_info*,struct xcoff_link_hash_entry*) ; 

bfd_boolean
FUNC8 (bfd *output_bfd,
			 struct bfd_link_info *info,
			 struct bfd_link_hash_entry *harg)
{
  struct xcoff_link_hash_entry *h = (struct xcoff_link_hash_entry *) harg;

  if (FUNC0 (output_bfd) != bfd_target_xcoff_flavour)
    return TRUE;

  h->flags |= XCOFF_EXPORT;

  /* FIXME: I'm not at all sure what syscall is supposed to mean, so
     I'm just going to ignore it until somebody explains it.  */

  /* See if this is a function descriptor.  It may be one even though
     it is not so marked.  */
  if ((h->flags & XCOFF_DESCRIPTOR) == 0
      && h->root.root.string[0] != '.')
    {
      char *fnname;
      struct xcoff_link_hash_entry *hfn;
      bfd_size_type amt = FUNC4 (h->root.root.string) + 2;

      fnname = FUNC1 (amt);
      if (fnname == NULL)
	return FALSE;
      fnname[0] = '.';
      FUNC3 (fnname + 1, h->root.root.string);
      hfn = FUNC6 (FUNC5 (info),
				    fnname, FALSE, FALSE, TRUE);
      FUNC2 (fnname);
      if (hfn != NULL
	  && hfn->smclas == XMC_PR
	  && (hfn->root.type == bfd_link_hash_defined
	      || hfn->root.type == bfd_link_hash_defweak))
	{
	  h->flags |= XCOFF_DESCRIPTOR;
	  h->descriptor = hfn;
	  hfn->descriptor = h;
	}
    }

  /* Make sure we don't garbage collect this symbol.  */
  if (! FUNC7 (info, h))
    return FALSE;

  /* If this is a function descriptor, make sure we don't garbage
     collect the associated function code.  We normally don't have to
     worry about this, because the descriptor will be attached to a
     section with relocs, but if we are creating the descriptor
     ourselves those relocs will not be visible to the mark code.  */
  if ((h->flags & XCOFF_DESCRIPTOR) != 0)
    {
      if (! FUNC7 (info, h->descriptor))
	return FALSE;
    }

  return TRUE;
}