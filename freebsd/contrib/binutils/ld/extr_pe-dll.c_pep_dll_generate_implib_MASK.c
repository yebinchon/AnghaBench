#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int num_exports; TYPE_9__* exports; scalar_t__ name; } ;
typedef  TYPE_2__ def_file ;
struct TYPE_20__ {int has_armap; struct TYPE_20__* archive_next; } ;
typedef  TYPE_3__ bfd ;
struct TYPE_22__ {char* internal_name; char* name; int /*<<< orphan*/  flag_data; } ;
struct TYPE_21__ {TYPE_1__* exports; } ;
struct TYPE_18__ {scalar_t__ flag_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  bfd_archive ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ dll_filename ; 
 scalar_t__ dll_name ; 
 char* dll_symname ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 TYPE_3__* FUNC8 (TYPE_3__*) ; 
 TYPE_3__* FUNC9 (TYPE_9__*,TYPE_3__*,int) ; 
 TYPE_3__* FUNC10 (TYPE_3__*) ; 
 TYPE_5__* pe_def_file ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 char* FUNC12 (scalar_t__) ; 

void
FUNC13 (def_file *def, const char *impfilename)
{
  int i;
  bfd *ar_head;
  bfd *ar_tail;
  bfd *outarch;
  bfd *head = 0;

  dll_filename = (def->name) ? def->name : dll_name;
  dll_symname = FUNC12 (dll_filename);
  for (i = 0; dll_symname[i]; i++)
    if (!FUNC0 (dll_symname[i]))
      dll_symname[i] = '_';

  FUNC11 (impfilename);

  outarch = FUNC3 (impfilename, 0);

  if (!outarch)
    {
      /* xgettext:c-format */
      FUNC6 (FUNC1("%XCan't open .lib file: %s\n"), impfilename);
      return;
    }

  /* xgettext:c-format */
  FUNC7 (FUNC1("Creating library file: %s\n"), impfilename);
 
  FUNC5 (outarch, bfd_archive);
  outarch->has_armap = 1;

  /* Work out a reasonable size of things to put onto one line.  */
  ar_head = FUNC8 (outarch);

  for (i = 0; i < def->num_exports; i++)
    {
      /* The import library doesn't know about the internal name.  */
      char *internal = def->exports[i].internal_name;
      bfd *n;

      /* Don't add PRIVATE entries to import lib.  */ 	
      if (pe_def_file->exports[i].flag_private)
	continue;
      def->exports[i].internal_name = def->exports[i].name;
      n = FUNC9 (def->exports + i, outarch,
		    ! (def->exports + i)->flag_data);
      n->archive_next = head;
      head = n;
      def->exports[i].internal_name = internal;
    }

  ar_tail = FUNC10 (outarch);

  if (ar_head == NULL || ar_tail == NULL)
    return;

  /* Now stick them all into the archive.  */
  ar_head->archive_next = head;
  ar_tail->archive_next = ar_head;
  head = ar_tail;

  if (! FUNC4 (outarch, head))
    FUNC6 ("%Xbfd_set_archive_head: %E\n");

  if (! FUNC2 (outarch))
    FUNC6 ("%Xbfd_close %s: %E\n", impfilename);

  while (head != NULL)
    {
      bfd *n = head->archive_next;
      FUNC2 (head);
      head = n;
    }
}