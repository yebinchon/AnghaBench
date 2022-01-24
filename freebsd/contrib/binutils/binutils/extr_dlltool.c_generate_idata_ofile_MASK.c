#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* dllname; int nfuncs; struct TYPE_4__* next; TYPE_2__* funchead; } ;
typedef  TYPE_1__ iheadtype ;
struct TYPE_5__ {int ord; char* name; struct TYPE_5__* next; } ;
typedef  TYPE_2__ ifunctype ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* ASM_BYTE ; 
 char* ASM_C ; 
 char* ASM_GLOBAL ; 
 char* ASM_LONG ; 
 char* ASM_RVA_AFTER ; 
 char* ASM_RVA_BEFORE ; 
 char* ASM_SHORT ; 
 char* ASM_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__* import_list ; 

__attribute__((used)) static void
FUNC1 (FILE *filvar)
{
  iheadtype *headptr;
  ifunctype *funcptr;
  int        headindex;
  int        funcindex;
  int	     nheads;

  if (import_list == NULL)
    return;

  FUNC0 (filvar, "%s Import data sections\n", ASM_C);
  FUNC0 (filvar, "\n\t.section\t.idata$2\n");
  FUNC0 (filvar, "\t%s\tdoi_idata\n", ASM_GLOBAL);
  FUNC0 (filvar, "doi_idata:\n");

  nheads = 0;
  for (headptr = import_list; headptr != NULL; headptr = headptr->next)
    {
      FUNC0 (filvar, "\t%slistone%d%s\t%s %s\n",
	       ASM_RVA_BEFORE, nheads, ASM_RVA_AFTER,
	       ASM_C, headptr->dllname);
      FUNC0 (filvar, "\t%s\t0\n", ASM_LONG);
      FUNC0 (filvar, "\t%s\t0\n", ASM_LONG);
      FUNC0 (filvar, "\t%sdllname%d%s\n",
	       ASM_RVA_BEFORE, nheads, ASM_RVA_AFTER);
      FUNC0 (filvar, "\t%slisttwo%d%s\n\n",
	       ASM_RVA_BEFORE, nheads, ASM_RVA_AFTER);
      nheads++;
    }

  FUNC0 (filvar, "\t%s\t0\n", ASM_LONG); /* NULL record at */
  FUNC0 (filvar, "\t%s\t0\n", ASM_LONG); /* end of idata$2 */
  FUNC0 (filvar, "\t%s\t0\n", ASM_LONG); /* section        */
  FUNC0 (filvar, "\t%s\t0\n", ASM_LONG);
  FUNC0 (filvar, "\t%s\t0\n", ASM_LONG);

  FUNC0 (filvar, "\n\t.section\t.idata$4\n");
  headindex = 0;
  for (headptr = import_list; headptr != NULL; headptr = headptr->next)
    {
      FUNC0 (filvar, "listone%d:\n", headindex);
      for (funcindex = 0; funcindex < headptr->nfuncs; funcindex++)
#ifdef DLLTOOL_MX86_64
	fprintf (filvar, "\t%sfuncptr%d_%d%s\n%s\t0\n",
		 ASM_RVA_BEFORE, headindex, funcindex, ASM_RVA_AFTER,ASM_LONG);
#else
	FUNC0 (filvar, "\t%sfuncptr%d_%d%s\n",
		 ASM_RVA_BEFORE, headindex, funcindex, ASM_RVA_AFTER);
#endif
#ifdef DLLTOOL_MX86_64
      fprintf (filvar, "\t%s\t0\n\t%s\t0\n", ASM_LONG, ASM_LONG); /* NULL terminating list.  */
#else
      FUNC0 (filvar, "\t%s\t0\n", ASM_LONG); /* NULL terminating list.  */
#endif
      headindex++;
    }

  FUNC0 (filvar, "\n\t.section\t.idata$5\n");
  headindex = 0;
  for (headptr = import_list; headptr != NULL; headptr = headptr->next)
    {
      FUNC0 (filvar, "listtwo%d:\n", headindex);
      for (funcindex = 0; funcindex < headptr->nfuncs; funcindex++)
#ifdef DLLTOOL_MX86_64
	fprintf (filvar, "\t%sfuncptr%d_%d%s\n%s\t0\n",
		 ASM_RVA_BEFORE, headindex, funcindex, ASM_RVA_AFTER,ASM_LONG);
#else
	FUNC0 (filvar, "\t%sfuncptr%d_%d%s\n",
		 ASM_RVA_BEFORE, headindex, funcindex, ASM_RVA_AFTER);
#endif
#ifdef DLLTOOL_MX86_64
      fprintf (filvar, "\t%s\t0\n\t%s\t0\n", ASM_LONG, ASM_LONG); /* NULL terminating list.  */
#else
      FUNC0 (filvar, "\t%s\t0\n", ASM_LONG); /* NULL terminating list.  */
#endif
      headindex++;
    }

  FUNC0 (filvar, "\n\t.section\t.idata$6\n");
  headindex = 0;
  for (headptr = import_list; headptr != NULL; headptr = headptr->next)
    {
      funcindex = 0;
      for (funcptr = headptr->funchead; funcptr != NULL;
	   funcptr = funcptr->next)
	{
	  FUNC0 (filvar,"funcptr%d_%d:\n", headindex, funcindex);
	  FUNC0 (filvar,"\t%s\t%d\n", ASM_SHORT,
		   ((funcptr->ord) & 0xFFFF));
	  FUNC0 (filvar,"\t%s\t\"%s\"\n", ASM_TEXT, funcptr->name);
	  FUNC0 (filvar,"\t%s\t0\n", ASM_BYTE);
	  funcindex++;
	}
      headindex++;
    }

  FUNC0 (filvar, "\n\t.section\t.idata$7\n");
  headindex = 0;
  for (headptr = import_list; headptr != NULL; headptr = headptr->next)
    {
      FUNC0 (filvar,"dllname%d:\n", headindex);
      FUNC0 (filvar,"\t%s\t\"%s\"\n", ASM_TEXT, headptr->dllname);
      FUNC0 (filvar,"\t%s\t0\n", ASM_BYTE);
      headindex++;
    }
}