#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {struct bfd_elf_version_tree* vertree; } ;
struct TYPE_12__ {char* string; } ;
struct TYPE_10__ {scalar_t__ link; } ;
struct TYPE_11__ {TYPE_1__ i; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_3__ root; TYPE_2__ u; } ;
struct elf_link_hash_entry {int hidden; int dynindx; TYPE_5__ verinfo; TYPE_4__ root; int /*<<< orphan*/  def_regular; } ;
struct elf_info_failed {void* failed; struct bfd_link_info* info; } ;
struct elf_backend_data {int /*<<< orphan*/  (* elf_backend_hide_symbol ) (struct bfd_link_info*,struct elf_link_hash_entry*,void*) ;} ;
struct elf_assign_sym_version_info {struct bfd_elf_version_tree* verdefs; void* failed; int /*<<< orphan*/  output_bfd; struct bfd_link_info* info; } ;
struct bfd_link_info {int /*<<< orphan*/  export_dynamic; scalar_t__ executable; } ;
struct TYPE_15__ {int /*<<< orphan*/ * list; } ;
struct bfd_elf_version_tree {char* name; unsigned int name_indx; scalar_t__ vernum; TYPE_6__ locals; struct bfd_elf_version_expr* (* match ) (TYPE_6__*,struct bfd_elf_version_expr*,char*) ;TYPE_6__ globals; struct bfd_elf_version_tree* next; void* used; } ;
struct bfd_elf_version_expr {int script; char* pattern; scalar_t__ symver; } ;
typedef  int bfd_size_type ;
typedef  void* bfd_boolean ;

/* Variables and functions */
 char ELF_VER_CHR ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct elf_link_hash_entry*,struct elf_info_failed*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  bfd_error_bad_value ; 
 scalar_t__ bfd_link_hash_warning ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct bfd_elf_version_tree* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct elf_backend_data* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,size_t) ; 
 char* FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 struct bfd_elf_version_expr* FUNC11 (TYPE_6__*,struct bfd_elf_version_expr*,char*) ; 
 struct bfd_elf_version_expr* FUNC12 (TYPE_6__*,struct bfd_elf_version_expr*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct bfd_link_info*,struct elf_link_hash_entry*,void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct bfd_elf_version_expr* FUNC15 (TYPE_6__*,struct bfd_elf_version_expr*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct bfd_link_info*,struct elf_link_hash_entry*,void*) ; 
 struct bfd_elf_version_expr* FUNC17 (TYPE_6__*,struct bfd_elf_version_expr*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct bfd_link_info*,struct elf_link_hash_entry*,void*) ; 

bfd_boolean
FUNC19 (struct elf_link_hash_entry *h, void *data)
{
  struct elf_assign_sym_version_info *sinfo;
  struct bfd_link_info *info;
  const struct elf_backend_data *bed;
  struct elf_info_failed eif;
  char *p;
  bfd_size_type amt;

  sinfo = data;
  info = sinfo->info;

  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;

  /* Fix the symbol flags.  */
  eif.failed = FALSE;
  eif.info = info;
  if (! FUNC1 (h, &eif))
    {
      if (eif.failed)
	sinfo->failed = TRUE;
      return FALSE;
    }

  /* We only need version numbers for symbols defined in regular
     objects.  */
  if (!h->def_regular)
    return TRUE;

  bed = FUNC7 (sinfo->output_bfd);
  p = FUNC9 (h->root.root.string, ELF_VER_CHR);
  if (p != NULL && h->verinfo.vertree == NULL)
    {
      struct bfd_elf_version_tree *t;
      bfd_boolean hidden;

      hidden = TRUE;

      /* There are two consecutive ELF_VER_CHR characters if this is
	 not a hidden symbol.  */
      ++p;
      if (*p == ELF_VER_CHR)
	{
	  hidden = FALSE;
	  ++p;
	}

      /* If there is no version string, we can just return out.  */
      if (*p == '\0')
	{
	  if (hidden)
	    h->hidden = 1;
	  return TRUE;
	}

      /* Look for the version.  If we find it, it is no longer weak.  */
      for (t = sinfo->verdefs; t != NULL; t = t->next)
	{
	  if (FUNC10 (t->name, p) == 0)
	    {
	      size_t len;
	      char *alc;
	      struct bfd_elf_version_expr *d;

	      len = p - h->root.root.string;
	      alc = FUNC3 (len);
	      if (alc == NULL)
		return FALSE;
	      FUNC8 (alc, h->root.root.string, len - 1);
	      alc[len - 1] = '\0';
	      if (alc[len - 2] == ELF_VER_CHR)
		alc[len - 2] = '\0';

	      h->verinfo.vertree = t;
	      t->used = TRUE;
	      d = NULL;

	      if (t->globals.list != NULL)
		d = (*t->match) (&t->globals, NULL, alc);

	      /* See if there is anything to force this symbol to
		 local scope.  */
	      if (d == NULL && t->locals.list != NULL)
		{
		  d = (*t->match) (&t->locals, NULL, alc);
		  if (d != NULL
		      && h->dynindx != -1
		      && ! info->export_dynamic)
		    (*bed->elf_backend_hide_symbol) (info, h, TRUE);
		}

	      FUNC6 (alc);
	      break;
	    }
	}

      /* If we are building an application, we need to create a
	 version node for this version.  */
      if (t == NULL && info->executable)
	{
	  struct bfd_elf_version_tree **pp;
	  int version_index;

	  /* If we aren't going to export this symbol, we don't need
	     to worry about it.  */
	  if (h->dynindx == -1)
	    return TRUE;

	  amt = sizeof *t;
	  t = FUNC5 (sinfo->output_bfd, amt);
	  if (t == NULL)
	    {
	      sinfo->failed = TRUE;
	      return FALSE;
	    }

	  t->name = p;
	  t->name_indx = (unsigned int) -1;
	  t->used = TRUE;

	  version_index = 1;
	  /* Don't count anonymous version tag.  */
	  if (sinfo->verdefs != NULL && sinfo->verdefs->vernum == 0)
	    version_index = 0;
	  for (pp = &sinfo->verdefs; *pp != NULL; pp = &(*pp)->next)
	    ++version_index;
	  t->vernum = version_index;

	  *pp = t;

	  h->verinfo.vertree = t;
	}
      else if (t == NULL)
	{
	  /* We could not find the version for a symbol when
	     generating a shared archive.  Return an error.  */
	  FUNC2)
	    (FUNC0("%B: version node not found for symbol %s"),
	     sinfo->output_bfd, h->root.root.string);
	  FUNC4 (bfd_error_bad_value);
	  sinfo->failed = TRUE;
	  return FALSE;
	}

      if (hidden)
	h->hidden = 1;
    }

  /* If we don't have a version for this symbol, see if we can find
     something.  */
  if (h->verinfo.vertree == NULL && sinfo->verdefs != NULL)
    {
      struct bfd_elf_version_tree *t;
      struct bfd_elf_version_tree *local_ver;
      struct bfd_elf_version_expr *d;

      /* See if can find what version this symbol is in.  If the
	 symbol is supposed to be local, then don't actually register
	 it.  */
      local_ver = NULL;
      for (t = sinfo->verdefs; t != NULL; t = t->next)
	{
	  if (t->globals.list != NULL)
	    {
	      bfd_boolean matched;

	      matched = FALSE;
	      d = NULL;
	      while ((d = (*t->match) (&t->globals, d,
				       h->root.root.string)) != NULL)
		if (d->symver)
		  matched = TRUE;
		else
		  {
		    /* There is a version without definition.  Make
		       the symbol the default definition for this
		       version.  */
		    h->verinfo.vertree = t;
		    local_ver = NULL;
		    d->script = 1;
		    break;
		  }
	      if (d != NULL)
		break;
	      else if (matched)
		/* There is no undefined version for this symbol. Hide the
		   default one.  */
		(*bed->elf_backend_hide_symbol) (info, h, TRUE);
	    }

	  if (t->locals.list != NULL)
	    {
	      d = NULL;
	      while ((d = (*t->match) (&t->locals, d,
				       h->root.root.string)) != NULL)
		{
		  local_ver = t;
		  /* If the match is "*", keep looking for a more
		     explicit, perhaps even global, match.
		     XXX: Shouldn't this be !d->wildcard instead?  */
		  if (d->pattern[0] != '*' || d->pattern[1] != '\0')
		    break;
		}

	      if (d != NULL)
		break;
	    }
	}

      if (local_ver != NULL)
	{
	  h->verinfo.vertree = local_ver;
	  if (h->dynindx != -1
	      && ! info->export_dynamic)
	    {
	      (*bed->elf_backend_hide_symbol) (info, h, TRUE);
	    }
	}
    }

  return TRUE;
}