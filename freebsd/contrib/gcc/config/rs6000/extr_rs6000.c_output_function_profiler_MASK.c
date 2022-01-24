#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * static_chain_decl; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  ABI_AIX 130 
#define  ABI_DARWIN 129 
#define  ABI_V4 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int DEFAULT_ABI ; 
 int /*<<< orphan*/  NO_PROFILE_COUNTERS ; 
 char* RS6000_MCOUNT ; 
 size_t STATIC_CHAIN_REGNUM ; 
 int /*<<< orphan*/  TARGET_32BIT ; 
 int /*<<< orphan*/  TARGET_PROFILE_KERNEL ; 
 int /*<<< orphan*/  TARGET_SECURE_PLT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* cfun ; 
 int flag_pic ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char** reg_names ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

void
FUNC8 (FILE *file, int labelno)
{
  char buf[100];

  switch (DEFAULT_ABI)
    {
    default:
      FUNC6 ();

    case ABI_V4:
      if (!TARGET_32BIT)
	{
	  FUNC7 (0, "no profiling of 64-bit code for this ABI");
	  return;
	}
      FUNC0 (buf, "LP", labelno);
      FUNC3 (file, "\tmflr %s\n", reg_names[0]);
      if (NO_PROFILE_COUNTERS)
	{
	  FUNC1 (file, "\t{st|stw} %s,4(%s)\n",
		       reg_names[0], reg_names[1]);
	}
      else if (TARGET_SECURE_PLT && flag_pic)
	{
	  FUNC1 (file, "\tbcl 20,31,1f\n1:\n\t{st|stw} %s,4(%s)\n",
		       reg_names[0], reg_names[1]);
	  FUNC1 (file, "\tmflr %s\n", reg_names[12]);
	  FUNC1 (file, "\t{cau|addis} %s,%s,",
		       reg_names[12], reg_names[12]);
	  FUNC2 (file, buf);
	  FUNC1 (file, "-1b@ha\n\t{cal|la} %s,", reg_names[0]);
	  FUNC2 (file, buf);
	  FUNC1 (file, "-1b@l(%s)\n", reg_names[12]);
	}
      else if (flag_pic == 1)
	{
	  FUNC4 ("\tbl _GLOBAL_OFFSET_TABLE_@local-4\n", file);
	  FUNC1 (file, "\t{st|stw} %s,4(%s)\n",
		       reg_names[0], reg_names[1]);
	  FUNC1 (file, "\tmflr %s\n", reg_names[12]);
	  FUNC1 (file, "\t{l|lwz} %s,", reg_names[0]);
	  FUNC2 (file, buf);
	  FUNC1 (file, "@got(%s)\n", reg_names[12]);
	}
      else if (flag_pic > 1)
	{
	  FUNC1 (file, "\t{st|stw} %s,4(%s)\n",
		       reg_names[0], reg_names[1]);
	  /* Now, we need to get the address of the label.  */
	  FUNC4 ("\tbcl 20,31,1f\n\t.long ", file);
	  FUNC2 (file, buf);
	  FUNC4 ("-.\n1:", file);
	  FUNC1 (file, "\tmflr %s\n", reg_names[11]);
	  FUNC1 (file, "\t{l|lwz} %s,0(%s)\n",
		       reg_names[0], reg_names[11]);
	  FUNC1 (file, "\t{cax|add} %s,%s,%s\n",
		       reg_names[0], reg_names[0], reg_names[11]);
	}
      else
	{
	  FUNC1 (file, "\t{liu|lis} %s,", reg_names[12]);
	  FUNC2 (file, buf);
	  FUNC4 ("@ha\n", file);
	  FUNC1 (file, "\t{st|stw} %s,4(%s)\n",
		       reg_names[0], reg_names[1]);
	  FUNC1 (file, "\t{cal|la} %s,", reg_names[0]);
	  FUNC2 (file, buf);
	  FUNC1 (file, "@l(%s)\n", reg_names[12]);
	}

      /* ABI_V4 saves the static chain reg with ASM_OUTPUT_REG_PUSH.  */
      FUNC3 (file, "\tbl %s%s\n",
	       RS6000_MCOUNT, flag_pic ? "@plt" : "");
      break;

    case ABI_AIX:
    case ABI_DARWIN:
      if (!TARGET_PROFILE_KERNEL)
	{
	  /* Don't do anything, done in output_profile_hook ().  */
	}
      else
	{
	  FUNC5 (!TARGET_32BIT);

	  FUNC1 (file, "\tmflr %s\n", reg_names[0]);
	  FUNC1 (file, "\tstd %s,16(%s)\n", reg_names[0], reg_names[1]);

	  if (cfun->static_chain_decl != NULL)
	    {
	      FUNC1 (file, "\tstd %s,24(%s)\n",
			   reg_names[STATIC_CHAIN_REGNUM], reg_names[1]);
	      FUNC3 (file, "\tbl %s\n", RS6000_MCOUNT);
	      FUNC1 (file, "\tld %s,24(%s)\n",
			   reg_names[STATIC_CHAIN_REGNUM], reg_names[1]);
	    }
	  else
	    FUNC3 (file, "\tbl %s\n", RS6000_MCOUNT);
	}
      break;
    }
}