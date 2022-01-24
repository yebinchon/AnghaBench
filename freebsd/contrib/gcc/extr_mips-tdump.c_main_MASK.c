#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_13__ {size_t ifd; int /*<<< orphan*/  asym; } ;
struct TYPE_12__ {scalar_t__ iauxBase; int /*<<< orphan*/  caux; } ;
struct TYPE_11__ {int ifdMax; int iauxMax; int iextMax; scalar_t__ cbExtOffset; } ;
struct TYPE_10__ {scalar_t__ isym; } ;
typedef  int /*<<< orphan*/  FDR ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  TARGET_VERSION ; 
 TYPE_1__* aux_symbols ; 
 int /*<<< orphan*/ * aux_used ; 
 int /*<<< orphan*/  e_strings ; 
 TYPE_8__* e_symbols ; 
 scalar_t__ errors ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* file_desc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int optind ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*,size_t,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 TYPE_2__ sym_hdr ; 
 int /*<<< orphan*/  tfile ; 
 scalar_t__ tfile_fd ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ verbose ; 
 scalar_t__ version ; 
 char* version_string ; 
 scalar_t__ want_aux ; 
 int /*<<< orphan*/  want_line ; 
 int /*<<< orphan*/  want_rfd ; 
 scalar_t__ want_scope ; 

int
FUNC13 (int argc, char **argv)
{
  int i, opt;

  /*
   * Process arguments
   */
  while ((opt = FUNC4 (argc, argv, "alrsvt", options, NULL)) != -1)
    switch (opt)
      {
      default:	errors++;	break;
      case 'a': want_aux++;	break;	/* print aux table */
      case 'l': want_line++;	break;	/* print line numbers */
      case 'r': want_rfd++;	break;	/* print relative fd's */
      case 's':	want_scope++;	break;	/* print scope info */
      case 'v': verbose++;	break;  /* print version # */
      case 'V': version++;	break;  /* print version # */
      case 't': tfile++;	break;	/* this is a tfile (without header),
					   and not a .o */
      }

  if (version)
    {
      FUNC10 ("mips-tdump (GCC) %s\n", version_string);
      FUNC3 ("Copyright (C) 2006 Free Software Foundation, Inc.\n", stdout);
      FUNC3 ("This is free software; see the source for copying conditions.  There is NO\n\
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.\n\n",
             stdout);
      FUNC0 (0);
    }

  if (optind != argc - 1)
    errors++;

  if (verbose || errors)
    {
      FUNC1 (stderr, "mips-tdump (GCC) %s", version_string);
#ifdef TARGET_VERSION
      TARGET_VERSION;
#endif
      FUNC2 ('\n', stderr);
    }

  if (errors)
    {
      FUNC1 (stderr, "Calling Sequence:\n");
      FUNC1 (stderr, "\t%s [-alrst] <object-or-T-file>\n", argv[0]);
      FUNC1 (stderr, "\n");
      FUNC1 (stderr, "switches:\n");
      FUNC1 (stderr, "\t-a Print out auxiliary table.\n");
      FUNC1 (stderr, "\t-l Print out line numbers.\n");
      FUNC1 (stderr, "\t-r Print out relative file descriptors.\n");
      FUNC1 (stderr, "\t-s Print out the current scopes for an item.\n");
      FUNC1 (stderr, "\t-t Assume there is no global header (ie, a T-file).\n");
      FUNC1 (stderr, "\t-v Print program version.\n");
      return 1;
    }

  /*
   * Open and process the input file.
   */
  tfile_fd = FUNC5 (argv[optind], O_RDONLY);
  if (tfile_fd < 0)
    {
      FUNC6 (argv[optind]);
      return 1;
    }

  FUNC11 ();

  /*
   * Print any global aux words if any.
   */
  if (want_aux)
    {
      long last_aux_in_use;

      if (sym_hdr.ifdMax != 0 && file_desc[0].iauxBase != 0)
	{
	  FUNC10 ("\nGlobal auxiliary entries before first file:\n");
	  for (i = 0; i < file_desc[0].iauxBase; i++)
	    FUNC7 (aux_symbols[i], 0, aux_used[i]);
	}

      if (sym_hdr.ifdMax == 0)
	last_aux_in_use = 0;
      else
	last_aux_in_use
	  = (file_desc[sym_hdr.ifdMax-1].iauxBase
	     + file_desc[sym_hdr.ifdMax-1].caux - 1);

      if (last_aux_in_use < sym_hdr.iauxMax-1)
	{
	  FUNC10 ("\nGlobal auxiliary entries after last file:\n");
	  for (i = last_aux_in_use; i < sym_hdr.iauxMax; i++)
	    FUNC7 (aux_symbols[i], i - last_aux_in_use, aux_used[i]);
	}
    }

  /*
   * Print the information for each file.
   */
  for (i = 0; i < sym_hdr.ifdMax; i++)
    FUNC8 (&file_desc[i], i);

  /*
   * Print the external symbols.
   */
  want_scope = 0;		/* scope info is meaning for extern symbols */
  FUNC10 ("\nThere are %lu external symbols, starting at %lu\n",
	  (ulong) sym_hdr.iextMax,
	  (ulong) sym_hdr.cbExtOffset);

  for(i = 0; i < sym_hdr.iextMax; i++)
    FUNC9 (&e_symbols[i].asym, i, e_strings,
		  aux_symbols + file_desc[e_symbols[i].ifd].iauxBase,
		  e_symbols[i].ifd,
		  &file_desc[e_symbols[i].ifd]);

  /*
   * Print unused aux symbols now.
   */

  if (want_aux)
    {
      int first_time = 1;

      for (i = 0; i < sym_hdr.iauxMax; i++)
	{
	  if (! aux_used[i])
	    {
	      if (first_time)
		{
		  FUNC10 ("\nThe following auxiliary table entries were unused:\n\n");
		  first_time = 0;
		}

	      FUNC10 ("    #%-5d %11ld  0x%08lx  %s\n",
		      i,
		      (long) aux_symbols[i].isym,
		      (long) aux_symbols[i].isym,
		      FUNC12 (aux_symbols, i, (FDR *) 0));
	    }
	}
    }

  return 0;
}