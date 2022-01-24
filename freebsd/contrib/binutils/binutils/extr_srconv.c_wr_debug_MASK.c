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
struct coff_sfile {char* name; struct coff_sfile* next; } ;
struct coff_ofile {struct coff_sfile* source_head; } ;

/* Variables and functions */
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct coff_ofile*,struct coff_sfile*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct coff_ofile*,struct coff_sfile*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct coff_ofile*,struct coff_sfile*) ; 
 int /*<<< orphan*/  FUNC4 (struct coff_ofile*,struct coff_sfile*) ; 

__attribute__((used)) static void
FUNC5 (struct coff_ofile *p)
{
  struct coff_sfile *sfile;
  int n = 0;

  for (sfile = p->source_head;
       sfile;
       sfile = sfile->next)
    {
      if (debug)
	FUNC0 ("%s\n", sfile->name);

      FUNC2 (p, sfile, n);
      FUNC3 (p, sfile);
      FUNC4 (p, sfile);
      FUNC1 (p, sfile, n);
      n++;
    }
}