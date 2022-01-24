#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_44__   TYPE_9__ ;
typedef  struct TYPE_43__   TYPE_8__ ;
typedef  struct TYPE_42__   TYPE_7__ ;
typedef  struct TYPE_41__   TYPE_6__ ;
typedef  struct TYPE_40__   TYPE_5__ ;
typedef  struct TYPE_39__   TYPE_4__ ;
typedef  struct TYPE_38__   TYPE_3__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_10__ ;

/* Type definitions */
struct TYPE_40__ {scalar_t__ size; } ;
struct TYPE_39__ {TYPE_10__* section; scalar_t__ value; } ;
struct TYPE_38__ {scalar_t__ link; } ;
struct TYPE_41__ {TYPE_5__ c; TYPE_4__ def; TYPE_3__ i; } ;
struct TYPE_42__ {int type; TYPE_6__ u; } ;
struct generic_link_hash_entry {scalar_t__ written; TYPE_7__ root; TYPE_9__* sym; } ;
struct bfd_link_info {scalar_t__ strip; int discard; int /*<<< orphan*/  relocatable; int /*<<< orphan*/  keep_hash; TYPE_2__* hash; int /*<<< orphan*/ * create_object_symbols_section; } ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_43__ {scalar_t__ xvec; int /*<<< orphan*/  filename; TYPE_10__* sections; } ;
typedef  TYPE_8__ bfd ;
struct TYPE_36__ {struct generic_link_hash_entry* p; } ;
struct TYPE_44__ {int flags; TYPE_10__* section; scalar_t__ value; TYPE_1__ udata; int /*<<< orphan*/  name; } ;
typedef  TYPE_9__ asymbol ;
struct TYPE_35__ {int flags; int /*<<< orphan*/ * output_section; struct TYPE_35__* next; } ;
typedef  TYPE_10__ asection ;
struct TYPE_37__ {scalar_t__ creator; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int BSF_CONSTRUCTOR ; 
 int BSF_DEBUGGING ; 
 int BSF_FILE ; 
 int BSF_GLOBAL ; 
 int BSF_INDIRECT ; 
 int BSF_LOCAL ; 
 int BSF_NOT_AT_END ; 
 int BSF_WARNING ; 
 int BSF_WEAK ; 
 scalar_t__ FALSE ; 
 int SEC_MERGE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct bfd_link_info*) ; 
 TYPE_9__** FUNC2 (TYPE_8__*) ; 
 int FUNC3 (TYPE_8__*) ; 
 struct generic_link_hash_entry* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_8__* FUNC6 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*) ; 
 TYPE_10__* bfd_com_section_ptr ; 
 TYPE_10__* FUNC8 (TYPE_9__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_10__*) ; 
 scalar_t__ FUNC11 (TYPE_10__*) ; 
 scalar_t__ FUNC12 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*,TYPE_9__*) ; 
 scalar_t__ FUNC14 (TYPE_10__*) ; 
#define  bfd_link_hash_common 138 
#define  bfd_link_hash_defined 137 
#define  bfd_link_hash_defweak 136 
#define  bfd_link_hash_indirect 135 
#define  bfd_link_hash_new 134 
#define  bfd_link_hash_undefined 133 
#define  bfd_link_hash_undefweak 132 
 TYPE_9__* FUNC15 (TYPE_8__*) ; 
 scalar_t__ FUNC16 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (TYPE_8__*,struct bfd_link_info*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
#define  discard_all 131 
#define  discard_l 130 
#define  discard_none 129 
#define  discard_sec_merge 128 
 int /*<<< orphan*/  FUNC18 (TYPE_8__*,size_t*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_8__*) ; 
 scalar_t__ strip_all ; 
 scalar_t__ strip_none ; 
 scalar_t__ strip_some ; 

bfd_boolean
FUNC20 (bfd *output_bfd,
				  bfd *input_bfd,
				  struct bfd_link_info *info,
				  size_t *psymalloc)
{
  asymbol **sym_ptr;
  asymbol **sym_end;

  if (! FUNC19 (input_bfd))
    return FALSE;

  /* Create a filename symbol if we are supposed to.  */
  if (info->create_object_symbols_section != NULL)
    {
      asection *sec;

      for (sec = input_bfd->sections; sec != NULL; sec = sec->next)
	{
	  if (sec->output_section == info->create_object_symbols_section)
	    {
	      asymbol *newsym;

	      newsym = FUNC15 (input_bfd);
	      if (!newsym)
		return FALSE;
	      newsym->name = input_bfd->filename;
	      newsym->value = 0;
	      newsym->flags = BSF_LOCAL | BSF_FILE;
	      newsym->section = sec;

	      if (! FUNC18 (output_bfd, psymalloc,
					       newsym))
		return FALSE;

	      break;
	    }
	}
    }

  /* Adjust the values of the globally visible symbols, and write out
     local symbols.  */
  sym_ptr = FUNC2 (input_bfd);
  sym_end = sym_ptr + FUNC3 (input_bfd);
  for (; sym_ptr < sym_end; sym_ptr++)
    {
      asymbol *sym;
      struct generic_link_hash_entry *h;
      bfd_boolean output;

      h = NULL;
      sym = *sym_ptr;
      if ((sym->flags & (BSF_INDIRECT
			 | BSF_WARNING
			 | BSF_GLOBAL
			 | BSF_CONSTRUCTOR
			 | BSF_WEAK)) != 0
	  || FUNC14 (FUNC8 (sym))
	  || FUNC11 (FUNC8 (sym))
	  || FUNC12 (FUNC8 (sym)))
	{
	  if (sym->udata.p != NULL)
	    h = sym->udata.p;
	  else if ((sym->flags & BSF_CONSTRUCTOR) != 0)
	    {
	      /* This case normally means that the main linker code
                 deliberately ignored this constructor symbol.  We
                 should just pass it through.  This will screw up if
                 the constructor symbol is from a different,
                 non-generic, object file format, but the case will
                 only arise when linking with -r, which will probably
                 fail anyhow, since there will be no way to represent
                 the relocs in the output format being used.  */
	      h = NULL;
	    }
	  else if (FUNC14 (FUNC8 (sym)))
	    h = ((struct generic_link_hash_entry *)
		 FUNC17 (output_bfd, info,
					       FUNC7 (sym),
					       FALSE, FALSE, TRUE));
	  else
	    h = FUNC4 (FUNC1 (info),
					       FUNC7 (sym),
					       FALSE, FALSE, TRUE);

	  if (h != NULL)
	    {
	      /* Force all references to this symbol to point to
		 the same area in memory.  It is possible that
		 this routine will be called with a hash table
		 other than a generic hash table, so we double
		 check that.  */
	      if (info->hash->creator == input_bfd->xvec)
		{
		  if (h->sym != NULL)
		    *sym_ptr = sym = h->sym;
		}

	      switch (h->root.type)
		{
		default:
		case bfd_link_hash_new:
		  FUNC5 ();
		case bfd_link_hash_undefined:
		  break;
		case bfd_link_hash_undefweak:
		  sym->flags |= BSF_WEAK;
		  break;
		case bfd_link_hash_indirect:
		  h = (struct generic_link_hash_entry *) h->root.u.i.link;
		  /* fall through */
		case bfd_link_hash_defined:
		  sym->flags |= BSF_GLOBAL;
		  sym->flags &=~ BSF_CONSTRUCTOR;
		  sym->value = h->root.u.def.value;
		  sym->section = h->root.u.def.section;
		  break;
		case bfd_link_hash_defweak:
		  sym->flags |= BSF_WEAK;
		  sym->flags &=~ BSF_CONSTRUCTOR;
		  sym->value = h->root.u.def.value;
		  sym->section = h->root.u.def.section;
		  break;
		case bfd_link_hash_common:
		  sym->value = h->root.u.c.size;
		  sym->flags |= BSF_GLOBAL;
		  if (! FUNC11 (sym->section))
		    {
		      FUNC0 (FUNC14 (sym->section));
		      sym->section = bfd_com_section_ptr;
		    }
		  /* We do not set the section of the symbol to
		     h->root.u.c.p->section.  That value was saved so
		     that we would know where to allocate the symbol
		     if it was defined.  In this case the type is
		     still bfd_link_hash_common, so we did not define
		     it, so we do not want to use that section.  */
		  break;
		}
	    }
	}

      /* This switch is straight from the old code in
	 write_file_locals in ldsym.c.  */
      if (info->strip == strip_all
	  || (info->strip == strip_some
	      && FUNC9 (info->keep_hash, FUNC7 (sym),
				  FALSE, FALSE) == NULL))
	output = FALSE;
      else if ((sym->flags & (BSF_GLOBAL | BSF_WEAK)) != 0)
	{
	  /* If this symbol is marked as occurring now, rather
	     than at the end, output it now.  This is used for
	     COFF C_EXT FCN symbols.  FIXME: There must be a
	     better way.  */
	  if (FUNC6 (sym) == input_bfd
	      && (sym->flags & BSF_NOT_AT_END) != 0)
	    output = TRUE;
	  else
	    output = FALSE;
	}
      else if (FUNC12 (sym->section))
	output = FALSE;
      else if ((sym->flags & BSF_DEBUGGING) != 0)
	{
	  if (info->strip == strip_none)
	    output = TRUE;
	  else
	    output = FALSE;
	}
      else if (FUNC14 (sym->section)
	       || FUNC11 (sym->section))
	output = FALSE;
      else if ((sym->flags & BSF_LOCAL) != 0)
	{
	  if ((sym->flags & BSF_WARNING) != 0)
	    output = FALSE;
	  else
	    {
	      switch (info->discard)
		{
		default:
		case discard_all:
		  output = FALSE;
		  break;
		case discard_sec_merge:
		  output = TRUE;
		  if (info->relocatable
		      || ! (sym->section->flags & SEC_MERGE))
		    break;
		  /* FALLTHROUGH */
		case discard_l:
		  if (FUNC13 (input_bfd, sym))
		    output = FALSE;
		  else
		    output = TRUE;
		  break;
		case discard_none:
		  output = TRUE;
		  break;
		}
	    }
	}
      else if ((sym->flags & BSF_CONSTRUCTOR))
	{
	  if (info->strip != strip_all)
	    output = TRUE;
	  else
	    output = FALSE;
	}
      else
	FUNC5 ();

      /* If this symbol is in a section which is not being included
	 in the output file, then we don't want to output the
	 symbol.  */
      if (!FUNC10 (sym->section)
	  && FUNC16 (output_bfd,
					    sym->section->output_section))
	output = FALSE;

      if (output)
	{
	  if (! FUNC18 (output_bfd, psymalloc, sym))
	    return FALSE;
	  if (h != NULL)
	    h->written = TRUE;
	}
    }

  return TRUE;
}