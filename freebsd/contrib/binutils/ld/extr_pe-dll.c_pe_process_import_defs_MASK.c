#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {int /*<<< orphan*/  hash; } ;
struct bfd_link_hash_entry {scalar_t__ type; } ;
struct TYPE_17__ {int /*<<< orphan*/  name; struct TYPE_17__* next; } ;
typedef  TYPE_2__ def_file_module ;
struct TYPE_18__ {char* internal_name; scalar_t__ ordinal; scalar_t__ hint; int flag_noname; int /*<<< orphan*/  flag_data; scalar_t__ name; scalar_t__ flag_constant; scalar_t__ flag_private; } ;
typedef  TYPE_3__ def_file_export ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_19__ {int /*<<< orphan*/  filename; } ;
typedef  TYPE_4__ bfd ;
struct TYPE_20__ {int num_imports; TYPE_1__* imports; TYPE_2__* modules; } ;
struct TYPE_16__ {char* internal_name; scalar_t__ ordinal; int /*<<< orphan*/  data; scalar_t__ name; TYPE_2__* module; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ TRUE ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 struct bfd_link_hash_entry* FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ bfd_link_hash_undefined ; 
 int /*<<< orphan*/  dll_filename ; 
 char* dll_symname ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_4__* FUNC6 (TYPE_4__*) ; 
 TYPE_4__* FUNC7 (TYPE_3__*,TYPE_4__*,int) ; 
 TYPE_4__* FUNC8 (TYPE_4__*) ; 
 TYPE_6__* pe_def_file ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,...) ; 
 size_t FUNC11 (char*) ; 
 char* FUNC12 (size_t) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 

void
FUNC14 (bfd *output_bfd, struct bfd_link_info *link_info)
{
  def_file_module *module;

  FUNC9 (FUNC3 (output_bfd));

  if (!pe_def_file)
    return;

  for (module = pe_def_file->modules; module; module = module->next)
    {
      int i, do_this_dll;

      dll_filename = module->name;
      dll_symname = FUNC13 (module->name);
      for (i = 0; dll_symname[i]; i++)
	if (!FUNC0 (dll_symname[i]))
	  dll_symname[i] = '_';

      do_this_dll = 0;

      for (i = 0; i < pe_def_file->num_imports; i++)
	if (pe_def_file->imports[i].module == module)
	  {
	    def_file_export exp;
	    struct bfd_link_hash_entry *blhe;
	    int lead_at = (*pe_def_file->imports[i].internal_name == '@');
	    /* See if we need this import.  */
	    size_t len = FUNC11 (pe_def_file->imports[i].internal_name);
	    char *name = FUNC12 (len + 2 + 6);
	    bfd_boolean include_jmp_stub = FALSE;

 	    if (lead_at)
	      FUNC10 (name, "%s",
		       pe_def_file->imports[i].internal_name);
	    else
	      FUNC10 (name, "%s%s",FUNC1 (""),
		       pe_def_file->imports[i].internal_name);

	    blhe = FUNC4 (link_info->hash, name,
					 FALSE, FALSE, FALSE);

	    /* Include the jump stub for <sym> only if the <sym>
	       is undefined.  */
	    if (!blhe || (blhe && blhe->type != bfd_link_hash_undefined))
	      {
		if (lead_at)
		  FUNC10 (name, "%s%s", "__imp_", 
			   pe_def_file->imports[i].internal_name);
		else
		  FUNC10 (name, "%s%s%s", "__imp_", FUNC1 (""),
			   pe_def_file->imports[i].internal_name);

		blhe = FUNC4 (link_info->hash, name,
					     FALSE, FALSE, FALSE);
	      }
	    else
	      include_jmp_stub = TRUE;

	    FUNC5 (name);

	    if (blhe && blhe->type == bfd_link_hash_undefined)
	      {
		bfd *one;
		/* We do.  */
		if (!do_this_dll)
		  {
		    bfd *ar_head = FUNC6 (output_bfd);
		    FUNC2 (ar_head, ar_head->filename, link_info);
		    do_this_dll = 1;
		  }
		exp.internal_name = pe_def_file->imports[i].internal_name;
		exp.name = pe_def_file->imports[i].name;
		exp.ordinal = pe_def_file->imports[i].ordinal;
		exp.hint = exp.ordinal >= 0 ? exp.ordinal : 0;
		exp.flag_private = 0;
		exp.flag_constant = 0;
		exp.flag_data = pe_def_file->imports[i].data;
		exp.flag_noname = exp.name ? 0 : 1;
		one = FUNC7 (&exp, output_bfd, (! exp.flag_data) && include_jmp_stub);
		FUNC2 (one, one->filename, link_info);
	      }
	  }
      if (do_this_dll)
	{
	  bfd *ar_tail = FUNC8 (output_bfd);
	  FUNC2 (ar_tail, ar_tail->filename, link_info);
	}

      FUNC5 (dll_symname);
    }
}