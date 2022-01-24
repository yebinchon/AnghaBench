#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct coff_sfile {TYPE_2__* section; } ;
struct coff_ofile {int nsections; } ;
struct IT_du {int format; int unit; int sections; int* san; int* address; int* length; char* tool; int /*<<< orphan*/  date; scalar_t__ spare; scalar_t__ stackfrmt; scalar_t__ optimized; } ;
struct TYPE_4__ {int high; int low; TYPE_1__* parent; scalar_t__ init; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATE ; 
 int EXEC_P ; 
 int /*<<< orphan*/  abfd ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  file ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct IT_du*) ; 
 scalar_t__ FUNC4 (int,int) ; 

__attribute__((used)) static void
FUNC5 (struct coff_ofile *p, struct coff_sfile *sfile, int n)
{
  struct IT_du du;
  int lim;
  int i;
  int j;
  unsigned int *lowest = (unsigned *) FUNC1 (p->nsections);
  unsigned int *highest = (unsigned *) FUNC1 (p->nsections);

  du.format = FUNC0 (abfd) & EXEC_P ? 0 : 1;
  du.optimized = 0;
  du.stackfrmt = 0;
  du.spare = 0;
  du.unit = n;
  du.sections = p->nsections - 1;
  du.san = (int *) FUNC4 (sizeof (int), du.sections);
  du.address = FUNC1 (du.sections);
  du.length = FUNC1 (du.sections);

  for (i = 0; i < du.sections; i++)
    {
      lowest[i] = ~0;
      highest[i] = 0;
    }

  lim = du.sections;
  for (j = 0; j < lim; j++)
    {
      int src = j;
      int dst = j;

      du.san[dst] = dst;

      if (sfile->section[src].init)
	{
	  du.length[dst]
	    = sfile->section[src].high - sfile->section[src].low + 1;
	  du.address[dst]
	    = sfile->section[src].low;
	}
      else
	{
	  du.length[dst] = 0;
	  du.address[dst] = 0;
	}

      if (debug)
	{
	  if (sfile->section[src].parent)
	    {
	      FUNC2 (" section %6s 0x%08x..0x%08x\n",
		      sfile->section[src].parent->name,
		      du.address[dst],
		      du.address[dst] + du.length[dst] - 1);
	    }
	}

      du.sections = dst + 1;
    }

  du.tool = "c_gcc";
  du.date = DATE;

  FUNC3 (file, &du);
}