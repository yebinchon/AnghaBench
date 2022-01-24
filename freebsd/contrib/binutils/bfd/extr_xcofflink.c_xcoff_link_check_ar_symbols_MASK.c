#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct xcoff_link_hash_entry {int flags; } ;
struct internal_syment {scalar_t__ n_sclass; scalar_t__ n_scnum; int n_numaux; } ;
struct bfd_link_info {TYPE_1__* callbacks; TYPE_8__* hash; int /*<<< orphan*/  static_link; } ;
struct bfd_link_hash_entry {scalar_t__ type; } ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_13__ {int flags; scalar_t__ xvec; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_14__ {scalar_t__ creator; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* add_archive_element ) (struct bfd_link_info*,TYPE_2__*,char const*) ;} ;

/* Variables and functions */
 scalar_t__ C_EXT ; 
 int DYNAMIC ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ N_UNDEF ; 
 int /*<<< orphan*/  SYMNMLEN ; 
 int /*<<< orphan*/  TRUE ; 
 int XCOFF_DEF_DYNAMIC ; 
 char* FUNC0 (TYPE_2__*,struct internal_syment*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,void*,void*) ; 
 int FUNC2 (TYPE_2__*) ; 
 struct bfd_link_hash_entry* FUNC3 (TYPE_8__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_link_hash_undefined ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfd_link_info*,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct bfd_link_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC8 (bfd *abfd,
			     struct bfd_link_info *info,
			     bfd_boolean *pneeded)
{
  bfd_size_type symesz;
  bfd_byte *esym;
  bfd_byte *esym_end;

  *pneeded = FALSE;

  if ((abfd->flags & DYNAMIC) != 0
      && ! info->static_link
      && info->hash->creator == abfd->xvec)
    return FUNC7 (abfd, info, pneeded);

  symesz = FUNC2 (abfd);
  esym = (bfd_byte *) FUNC4 (abfd);
  esym_end = esym + FUNC5 (abfd) * symesz;
  while (esym < esym_end)
    {
      struct internal_syment sym;

      FUNC1 (abfd, (void *) esym, (void *) &sym);

      if (sym.n_sclass == C_EXT && sym.n_scnum != N_UNDEF)
	{
	  const char *name;
	  char buf[SYMNMLEN + 1];
	  struct bfd_link_hash_entry *h;

	  /* This symbol is externally visible, and is defined by this
	     object file.  */
	  name = FUNC0 (abfd, &sym, buf);

	  if (name == NULL)
	    return FALSE;
	  h = FUNC3 (info->hash, name, FALSE, FALSE, TRUE);

	  /* We are only interested in symbols that are currently
	     undefined.  If a symbol is currently known to be common,
	     XCOFF linkers do not bring in an object file which
	     defines it.  We also don't bring in symbols to satisfy
	     undefined references in shared objects.  */
	  if (h != NULL
	      && h->type == bfd_link_hash_undefined
 	      && (info->hash->creator != abfd->xvec
		  || (((struct xcoff_link_hash_entry *) h)->flags
		      & XCOFF_DEF_DYNAMIC) == 0))
	    {
	      if (! (*info->callbacks->add_archive_element) (info, abfd, name))
		return FALSE;
	      *pneeded = TRUE;
	      return TRUE;
	    }
	}

      esym += (sym.n_numaux + 1) * symesz;
    }

  /* We do not need this object file.  */
  return TRUE;
}