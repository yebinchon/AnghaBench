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
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {scalar_t__ in; scalar_t__ out; int opnum; int inc; scalar_t__ in_reg; scalar_t__ out_reg; scalar_t__ reg_rtx; int secondary_in_reload; int secondary_out_reload; size_t secondary_in_icode; size_t secondary_out_icode; scalar_t__ secondary_p; scalar_t__ nocombine; scalar_t__ nongroup; scalar_t__ optional; scalar_t__ when_needed; scalar_t__ class; int /*<<< orphan*/  outmode; int /*<<< orphan*/  inmode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t CODE_FOR_nothing ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_2__* insn_data ; 
 int n_reloads ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 char** reg_class_names ; 
 char** reload_when_needed_name ; 
 TYPE_1__* rld ; 
 int /*<<< orphan*/ * stderr ; 

void
FUNC3 (FILE *f)
{
  int r;
  const char *prefix;

  if (! f)
    f = stderr;
  for (r = 0; r < n_reloads; r++)
    {
      FUNC1 (f, "Reload %d: ", r);

      if (rld[r].in != 0)
	{
	  FUNC1 (f, "reload_in (%s) = ",
		   FUNC0 (rld[r].inmode));
	  FUNC2 (f, rld[r].in, 24);
	  FUNC1 (f, "\n\t");
	}

      if (rld[r].out != 0)
	{
	  FUNC1 (f, "reload_out (%s) = ",
		   FUNC0 (rld[r].outmode));
	  FUNC2 (f, rld[r].out, 24);
	  FUNC1 (f, "\n\t");
	}

      FUNC1 (f, "%s, ", reg_class_names[(int) rld[r].class]);

      FUNC1 (f, "%s (opnum = %d)",
	       reload_when_needed_name[(int) rld[r].when_needed],
	       rld[r].opnum);

      if (rld[r].optional)
	FUNC1 (f, ", optional");

      if (rld[r].nongroup)
	FUNC1 (f, ", nongroup");

      if (rld[r].inc != 0)
	FUNC1 (f, ", inc by %d", rld[r].inc);

      if (rld[r].nocombine)
	FUNC1 (f, ", can't combine");

      if (rld[r].secondary_p)
	FUNC1 (f, ", secondary_reload_p");

      if (rld[r].in_reg != 0)
	{
	  FUNC1 (f, "\n\treload_in_reg: ");
	  FUNC2 (f, rld[r].in_reg, 24);
	}

      if (rld[r].out_reg != 0)
	{
	  FUNC1 (f, "\n\treload_out_reg: ");
	  FUNC2 (f, rld[r].out_reg, 24);
	}

      if (rld[r].reg_rtx != 0)
	{
	  FUNC1 (f, "\n\treload_reg_rtx: ");
	  FUNC2 (f, rld[r].reg_rtx, 24);
	}

      prefix = "\n\t";
      if (rld[r].secondary_in_reload != -1)
	{
	  FUNC1 (f, "%ssecondary_in_reload = %d",
		   prefix, rld[r].secondary_in_reload);
	  prefix = ", ";
	}

      if (rld[r].secondary_out_reload != -1)
	FUNC1 (f, "%ssecondary_out_reload = %d\n",
		 prefix, rld[r].secondary_out_reload);

      prefix = "\n\t";
      if (rld[r].secondary_in_icode != CODE_FOR_nothing)
	{
	  FUNC1 (f, "%ssecondary_in_icode = %s", prefix,
		   insn_data[rld[r].secondary_in_icode].name);
	  prefix = ", ";
	}

      if (rld[r].secondary_out_icode != CODE_FOR_nothing)
	FUNC1 (f, "%ssecondary_out_icode = %s", prefix,
		 insn_data[rld[r].secondary_out_icode].name);

      FUNC1 (f, "\n");
    }
}