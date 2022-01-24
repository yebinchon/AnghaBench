#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ private; int /*<<< orphan*/  next; int /*<<< orphan*/  forward; int /*<<< orphan*/  hint; int /*<<< orphan*/  data; int /*<<< orphan*/  noname; int /*<<< orphan*/  constant; int /*<<< orphan*/  ordinal; int /*<<< orphan*/  name; int /*<<< orphan*/  import_name; int /*<<< orphan*/  internal_name; } ;
typedef  TYPE_1__ export_type ;
struct TYPE_14__ {int has_armap; struct TYPE_14__* archive_next; } ;
typedef  TYPE_2__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  HOW_BFD_WRITE_TARGET ; 
 int PREFIX_ALIAS_BASE ; 
 char* TMP_HEAD_O ; 
 char* TMP_HEAD_S ; 
 char* TMP_STUB ; 
 char* TMP_TAIL_O ; 
 char* TMP_TAIL_S ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  bfd_archive ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_2__* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__** d_exports_lexically ; 
 int dontdeltemps ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ ext_prefix_alias ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 char* imp_name ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,...) ; 
 TYPE_2__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (TYPE_1__*,int) ; 
 TYPE_2__* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (char*) ; 
 scalar_t__ FUNC18 (char*) ; 

__attribute__((used)) static void
FUNC19 (void)
{
  int i;
  export_type *exp;
  bfd *ar_head;
  bfd *ar_tail;
  bfd *outarch;
  bfd * head  = 0;

  FUNC18 (imp_name);

  outarch = FUNC5 (imp_name, HOW_BFD_WRITE_TARGET);

  if (!outarch)
    /* xgettext:c-format */
    FUNC8 (FUNC0("Can't open .lib file: %s"), imp_name);

  /* xgettext:c-format */
  FUNC9 (FUNC0("Creating library file: %s"), imp_name);

  FUNC7 (outarch, bfd_archive);
  outarch->has_armap = 1;

  /* Work out a reasonable size of things to put onto one line.  */
  ar_head = FUNC10 ();
  ar_tail = FUNC13();

  if (ar_head == NULL || ar_tail == NULL)
    return;

  for (i = 0; (exp = d_exports_lexically[i]); i++)
    {
      bfd *n;
      /* Don't add PRIVATE entries to import lib.  */
      if (exp->private)
	continue;
      n = FUNC12 (exp, i);
      n->archive_next = head;
      head = n;
      if (ext_prefix_alias)
	{
	  export_type alias_exp;

	  FUNC2 (i < PREFIX_ALIAS_BASE);
	  alias_exp.name = FUNC11 (ext_prefix_alias, exp->name);
	  alias_exp.internal_name = exp->internal_name;
	  alias_exp.import_name = exp->name;
	  alias_exp.ordinal = exp->ordinal;
	  alias_exp.constant = exp->constant;
	  alias_exp.noname = exp->noname;
	  alias_exp.private = exp->private;
	  alias_exp.data = exp->data;
	  alias_exp.hint = exp->hint;
	  alias_exp.forward = exp->forward;
	  alias_exp.next = exp->next;
	  n = FUNC12 (&alias_exp, i + PREFIX_ALIAS_BASE);
	  n->archive_next = head;
	  head = n;
	}
    }

  /* Now stick them all into the archive.  */
  ar_head->archive_next = head;
  ar_tail->archive_next = ar_head;
  head = ar_tail;

  if (! FUNC6 (outarch, head))
    FUNC4 ("bfd_set_archive_head");

  if (! FUNC3 (outarch))
    FUNC4 (imp_name);

  while (head != NULL)
    {
      bfd *n = head->archive_next;
      FUNC3 (head);
      head = n;
    }

  /* Delete all the temp files.  */
  if (dontdeltemps == 0)
    {
      FUNC18 (TMP_HEAD_O);
      FUNC18 (TMP_HEAD_S);
      FUNC18 (TMP_TAIL_O);
      FUNC18 (TMP_TAIL_S);
    }

  if (dontdeltemps < 2)
    {
      char *name;

      name = (char *) FUNC1 (FUNC17 (TMP_STUB) + 10);
      for (i = 0; (exp = d_exports_lexically[i]); i++)
	{
	  /* Don't delete non-existent stubs for PRIVATE entries.  */
          if (exp->private)
	    continue;
	  FUNC15 (name, "%s%05d.o", TMP_STUB, i);
	  if (FUNC18 (name) < 0)
	    /* xgettext:c-format */
	    FUNC14 (FUNC0("cannot delete %s: %s"), name, FUNC16 (errno));
	  if (ext_prefix_alias)
	    {
	      FUNC15 (name, "%s%05d.o", TMP_STUB, i + PREFIX_ALIAS_BASE);
	      if (FUNC18 (name) < 0)
		/* xgettext:c-format */
		FUNC14 (FUNC0("cannot delete %s: %s"), name, FUNC16 (errno));
	    }
	}
    }

  FUNC9 (FUNC0("Created lib file"));
}