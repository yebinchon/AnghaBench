#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xcoff_link_hash_entry {int flags; } ;
struct TYPE_5__ {scalar_t__ _l_zeroes; int _l_offset; } ;
struct TYPE_6__ {int /*<<< orphan*/  _l_name; TYPE_1__ _l_l; } ;
struct internal_ldsym {int l_smtype; TYPE_2__ _l; } ;
struct internal_ldhdr {int l_stoff; int l_nsyms; } ;
struct bfd_link_info {TYPE_3__* callbacks; int /*<<< orphan*/  hash; } ;
struct bfd_link_hash_entry {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_8__ {int /*<<< orphan*/ * contents; int /*<<< orphan*/  keep_contents; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* add_archive_element ) (struct bfd_link_info*,int /*<<< orphan*/ *,char const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int L_EXPORT ; 
 int SYMNMLEN ; 
 int /*<<< orphan*/  TRUE ; 
 int XCOFF_DEF_DYNAMIC ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct bfd_link_hash_entry* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_link_hash_undefined ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct internal_ldhdr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct internal_ldhdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct internal_ldsym*) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bfd_link_info*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC11 (bfd *abfd,
				     struct bfd_link_info *info,
				     bfd_boolean *pneeded)
{
  asection *lsec;
  bfd_byte *contents;
  struct internal_ldhdr ldhdr;
  const char *strings;
  bfd_byte *elsym, *elsymend;

  *pneeded = FALSE;

  lsec = FUNC0 (abfd, ".loader");
  if (lsec == NULL)
    /* There are no symbols, so don't try to include it.  */
    return TRUE;

  if (! FUNC10 (abfd, lsec))
    return FALSE;
  contents = FUNC6 (abfd, lsec)->contents;

  FUNC4 (abfd, contents, &ldhdr);

  strings = (char *) contents + ldhdr.l_stoff;

  elsym = contents + FUNC3 (abfd, &ldhdr);

  elsymend = elsym + ldhdr.l_nsyms * FUNC2 (abfd);
  for (; elsym < elsymend; elsym += FUNC2 (abfd))
    {
      struct internal_ldsym ldsym;
      char nambuf[SYMNMLEN + 1];
      const char *name;
      struct bfd_link_hash_entry *h;

      FUNC5 (abfd, elsym, &ldsym);

      /* We are only interested in exported symbols.  */
      if ((ldsym.l_smtype & L_EXPORT) == 0)
	continue;

      if (ldsym._l._l_l._l_zeroes == 0)
	name = strings + ldsym._l._l_l._l_offset;
      else
	{
	  FUNC8 (nambuf, ldsym._l._l_name, SYMNMLEN);
	  nambuf[SYMNMLEN] = '\0';
	  name = nambuf;
	}

      h = FUNC1 (info->hash, name, FALSE, FALSE, TRUE);

      /* We are only interested in symbols that are currently
	 undefined.  At this point we know that we are using an XCOFF
	 hash table.  */
      if (h != NULL
	  && h->type == bfd_link_hash_undefined
	  && (((struct xcoff_link_hash_entry *) h)->flags
	      & XCOFF_DEF_DYNAMIC) == 0)
	{
	  if (! (*info->callbacks->add_archive_element) (info, abfd, name))
	    return FALSE;
	  *pneeded = TRUE;
	  return TRUE;
	}
    }

  /* We do not need this shared object.  */
  if (contents != NULL && ! FUNC6 (abfd, lsec)->keep_contents)
    {
      FUNC7 (FUNC6 (abfd, lsec)->contents);
      FUNC6 (abfd, lsec)->contents = NULL;
    }

  return TRUE;
}