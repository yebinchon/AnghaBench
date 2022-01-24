#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lang_wild_statement_type ;
struct TYPE_7__ {int /*<<< orphan*/ * the_bfd; } ;
typedef  TYPE_1__ lang_input_statement_type ;
typedef  int /*<<< orphan*/  callback_t ;
struct TYPE_8__ {TYPE_1__* usrdata; } ;
typedef  TYPE_2__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  bfd_archive ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC3 (lang_wild_statement_type *s,
		lang_input_statement_type *f,
		callback_t callback,
		void *data)
{
  if (f->the_bfd == NULL
      || ! FUNC0 (f->the_bfd, bfd_archive))
    FUNC2 (s, f, callback, data);
  else
    {
      bfd *member;

      /* This is an archive file.  We must map each member of the
	 archive separately.  */
      member = FUNC1 (f->the_bfd, NULL);
      while (member != NULL)
	{
	  /* When lookup_name is called, it will call the add_symbols
	     entry point for the archive.  For each element of the
	     archive which is included, BFD will call ldlang_add_file,
	     which will set the usrdata field of the member to the
	     lang_input_statement.  */
	  if (member->usrdata != NULL)
	    {
	      FUNC2 (s, member->usrdata, callback, data);
	    }

	  member = FUNC1 (f->the_bfd, member);
	}
    }
}