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
struct internal_syment {int n_numaux; } ;
struct bfd_link_info {TYPE_1__* callbacks; int /*<<< orphan*/  hash; scalar_t__ pei386_auto_import; } ;
struct bfd_link_hash_entry {scalar_t__ type; } ;
typedef  enum coff_symbol_classification { ____Placeholder_coff_symbol_classification } coff_symbol_classification ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int /*<<< orphan*/  (* add_archive_element ) (struct bfd_link_info*,int /*<<< orphan*/ *,char const*) ;} ;

/* Variables and functions */
 int COFF_SYMBOL_COMMON ; 
 int COFF_SYMBOL_GLOBAL ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SYMNMLEN ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (int /*<<< orphan*/ *,struct internal_syment*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct internal_syment*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct internal_syment*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 struct bfd_link_hash_entry* FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_link_hash_undefined ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct bfd_link_info*,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC9 (bfd *abfd,
			    struct bfd_link_info *info,
			    bfd_boolean *pneeded)
{
  bfd_size_type symesz;
  bfd_byte *esym;
  bfd_byte *esym_end;

  *pneeded = FALSE;

  symesz = FUNC4 (abfd);
  esym = (bfd_byte *) FUNC6 (abfd);
  esym_end = esym + FUNC7 (abfd) * symesz;
  while (esym < esym_end)
    {
      struct internal_syment sym;
      enum coff_symbol_classification classification;

      FUNC3 (abfd, esym, &sym);

      classification = FUNC2 (abfd, &sym);
      if (classification == COFF_SYMBOL_GLOBAL
	  || classification == COFF_SYMBOL_COMMON)
	{
	  const char *name;
	  char buf[SYMNMLEN + 1];
	  struct bfd_link_hash_entry *h;

	  /* This symbol is externally visible, and is defined by this
             object file.  */
	  name = FUNC1 (abfd, &sym, buf);
	  if (name == NULL)
	    return FALSE;
	  h = FUNC5 (info->hash, name, FALSE, FALSE, TRUE);

	  /* Auto import.  */
	  if (!h
	      && info->pei386_auto_import
	      && FUNC0 (name, "__imp_"))
	    h = FUNC5 (info->hash, name + 6, FALSE, FALSE, TRUE);

	  /* We are only interested in symbols that are currently
	     undefined.  If a symbol is currently known to be common,
	     COFF linkers do not bring in an object file which defines
	     it.  */
	  if (h != (struct bfd_link_hash_entry *) NULL
	      && h->type == bfd_link_hash_undefined)
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