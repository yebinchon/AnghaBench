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
 char* ASM_C ; 
 char* ASM_GLOBAL ; 
 char* ASM_LONG ; 
 char* ASM_RVA_AFTER ; 
 char* ASM_RVA_BEFORE ; 
 int /*<<< orphan*/  FOPEN_WT ; 
 int /*<<< orphan*/  HOW_BFD_READ_TARGET ; 
 int /*<<< orphan*/  TMP_HEAD_O ; 
 int /*<<< orphan*/  TMP_HEAD_S ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 char* head_label ; 
 char* imp_name_lab ; 
 int /*<<< orphan*/  no_idata4 ; 
 int /*<<< orphan*/  no_idata5 ; 

__attribute__((used)) static bfd *
FUNC7 (void)
{
  FILE *f = FUNC5 (TMP_HEAD_S, FOPEN_WT);

  if (f == NULL)
    {
      FUNC3 (FUNC0("failed to open temporary head file: %s"), TMP_HEAD_S);
      return NULL;
    }

  FUNC6 (f, "%s IMAGE_IMPORT_DESCRIPTOR\n", ASM_C);
  FUNC6 (f, "\t.section	.idata$2\n");

  FUNC6(f,"\t%s\t%s\n", ASM_GLOBAL,head_label);

  FUNC6 (f, "%s:\n", head_label);

  FUNC6 (f, "\t%shname%s\t%sPtr to image import by name list\n",
	   ASM_RVA_BEFORE, ASM_RVA_AFTER, ASM_C);

  FUNC6 (f, "\t%sthis should be the timestamp, but NT sometimes\n", ASM_C);
  FUNC6 (f, "\t%sdoesn't load DLLs when this is set.\n", ASM_C);
  FUNC6 (f, "\t%s\t0\t%s loaded time\n", ASM_LONG, ASM_C);
  FUNC6 (f, "\t%s\t0\t%s Forwarder chain\n", ASM_LONG, ASM_C);
  FUNC6 (f, "\t%s__%s_iname%s\t%s imported dll's name\n",
	   ASM_RVA_BEFORE,
	   imp_name_lab,
	   ASM_RVA_AFTER,
	   ASM_C);
  FUNC6 (f, "\t%sfthunk%s\t%s pointer to firstthunk\n",
	   ASM_RVA_BEFORE,
	   ASM_RVA_AFTER, ASM_C);

  FUNC6 (f, "%sStuff for compatibility\n", ASM_C);

  if (!no_idata5)
    {
      FUNC6 (f, "\t.section\t.idata$5\n");
#ifdef DLLTOOL_MX86_64
      fprintf (f,"\t%s\t0\n\t%s\t0\n", ASM_LONG, ASM_LONG); /* NULL terminating list.  */
#else
      FUNC6 (f,"\t%s\t0\n", ASM_LONG); /* NULL terminating list.  */
#endif
      FUNC6 (f, "fthunk:\n");
    }

  if (!no_idata4)
    {
      FUNC6 (f, "\t.section\t.idata$4\n");
      FUNC6 (f, "\t%s\t0\n", ASM_LONG);
      FUNC6 (f, "\t.section	.idata$4\n");
      FUNC6 (f, "hname:\n");
    }

  FUNC4 (f);

  FUNC1 (TMP_HEAD_S, TMP_HEAD_O);

  return FUNC2 (TMP_HEAD_O, HOW_BFD_READ_TARGET);
}