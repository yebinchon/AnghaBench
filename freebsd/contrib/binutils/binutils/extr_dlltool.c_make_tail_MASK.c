#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* ASM_GLOBAL ; 
 char* ASM_LONG ; 
 char* ASM_TEXT ; 
 int /*<<< orphan*/  FOPEN_WT ; 
 int /*<<< orphan*/  HOW_BFD_READ_TARGET ; 
 int /*<<< orphan*/  TMP_TAIL_O ; 
 int /*<<< orphan*/  TMP_TAIL_S ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* dll_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 char* imp_name_lab ; 
 int /*<<< orphan*/  no_idata4 ; 
 int /*<<< orphan*/  no_idata5 ; 

__attribute__((used)) static bfd *
FUNC7 (void)
{
  FILE *f = FUNC5 (TMP_TAIL_S, FOPEN_WT);

  if (f == NULL)
    {
      FUNC3 (FUNC0("failed to open temporary tail file: %s"), TMP_TAIL_S);
      return NULL;
    }

  if (!no_idata4)
    {
      FUNC6 (f, "\t.section	.idata$4\n");
#ifdef DLLTOOL_MX86_64
      fprintf (f,"\t%s\t0\n\t%s\t0\n", ASM_LONG, ASM_LONG); /* NULL terminating list.  */
#else
      FUNC6 (f,"\t%s\t0\n", ASM_LONG); /* NULL terminating list.  */
#endif
    }

  if (!no_idata5)
    {
      FUNC6 (f, "\t.section	.idata$5\n");
#ifdef DLLTOOL_MX86_64
      fprintf (f,"\t%s\t0\n\t%s\t0\n", ASM_LONG, ASM_LONG); /* NULL terminating list.  */
#else
      FUNC6 (f,"\t%s\t0\n", ASM_LONG); /* NULL terminating list.  */
#endif
    }

#ifdef DLLTOOL_PPC
  /* Normally, we need to see a null descriptor built in idata$3 to
     act as the terminator for the list. The ideal way, I suppose,
     would be to mark this section as a comdat type 2 section, so
     only one would appear in the final .exe (if our linker supported
     comdat, that is) or cause it to be inserted by something else (say
     crt0).  */

  fprintf (f, "\t.section	.idata$3\n");
  fprintf (f, "\t%s\t0\n", ASM_LONG);
  fprintf (f, "\t%s\t0\n", ASM_LONG);
  fprintf (f, "\t%s\t0\n", ASM_LONG);
  fprintf (f, "\t%s\t0\n", ASM_LONG);
  fprintf (f, "\t%s\t0\n", ASM_LONG);
#endif

#ifdef DLLTOOL_PPC
  /* Other PowerPC NT compilers use idata$6 for the dllname, so I
     do too. Original, huh?  */
  fprintf (f, "\t.section	.idata$6\n");
#else
  FUNC6 (f, "\t.section	.idata$7\n");
#endif

  FUNC6 (f, "\t%s\t__%s_iname\n", ASM_GLOBAL, imp_name_lab);
  FUNC6 (f, "__%s_iname:\t%s\t\"%s\"\n",
	   imp_name_lab, ASM_TEXT, dll_name);

  FUNC4 (f);

  FUNC1 (TMP_TAIL_S, TMP_TAIL_O);

  return FUNC2 (TMP_TAIL_O, HOW_BFD_READ_TARGET);
}