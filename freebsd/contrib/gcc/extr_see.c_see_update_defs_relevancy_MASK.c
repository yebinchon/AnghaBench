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
struct see_entry_extra_info {int relevancy; int local_relevancy; int source_mode; int local_source_mode; int source_mode_signed; int source_mode_unsigned; } ;
typedef  int /*<<< orphan*/ * rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum entry_type { ____Placeholder_entry_type } entry_type ;
struct TYPE_2__ {int /*<<< orphan*/ * pred; int /*<<< orphan*/ * reg; struct see_entry_extra_info* extra_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
#define  EXTENDED_DEF 130 
 char* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int MAX_MACHINE_MODE ; 
 int NOT_RELEVANT ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
#define  SIGN_EXTENDED_DEF 129 
#define  ZERO_EXTENDED_DEF 128 
 TYPE_1__* def_entry ; 
 unsigned int defs_num ; 
 int /*<<< orphan*/  df ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ *,int*,int*) ; 
 struct see_entry_extra_info* FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10 (void)
{
  struct see_entry_extra_info *curr_entry_extra_info;
  unsigned int i;
  rtx insn = NULL;
  rtx reg = NULL;
  enum entry_type et;
  enum machine_mode source_mode;
  enum machine_mode source_mode_unsigned;

  if (!df || !def_entry)
    return;

  for (i = 0; i < defs_num; i++)
    {
      insn = FUNC1 (FUNC0 (df, i));
      reg = FUNC2 (FUNC0 (df, i));

      et = FUNC8 (insn, &source_mode, &source_mode_unsigned);

      curr_entry_extra_info = FUNC9 (sizeof (struct see_entry_extra_info));
      curr_entry_extra_info->relevancy = et;
      curr_entry_extra_info->local_relevancy = et;
      if (et != EXTENDED_DEF)
	{
	  curr_entry_extra_info->source_mode = source_mode;
	  curr_entry_extra_info->local_source_mode = source_mode;
	}
      else
	{
	  curr_entry_extra_info->source_mode_signed = source_mode;
	  curr_entry_extra_info->source_mode_unsigned = source_mode_unsigned;
	}
      def_entry[i].extra_info = curr_entry_extra_info;
      def_entry[i].reg = NULL;
      def_entry[i].pred = NULL;

      if (dump_file)
	{
	  if (et == NOT_RELEVANT)
	    {
	      FUNC6 (dump_file, "d%i insn %i reg %i ",
              i, (insn ? FUNC4 (insn) : -1), FUNC5 (reg));
	      FUNC6 (dump_file, "NOT RELEVANT \n");
	    }
	  else
	    {
	      FUNC6 (dump_file, "d%i insn %i reg %i ",
		       i ,FUNC4 (insn), FUNC5 (reg));
	      FUNC6 (dump_file, "RELEVANT - ");
	      switch (et)
		{
		case SIGN_EXTENDED_DEF :
		  FUNC6 (dump_file, "SIGN_EXTENDED_DEF, source_mode = %s\n",
			   FUNC3 (source_mode));
		  break;
		case ZERO_EXTENDED_DEF :
		  FUNC6 (dump_file, "ZERO_EXTENDED_DEF, source_mode = %s\n",
			   FUNC3 (source_mode));
		  break;
		case EXTENDED_DEF :
		  FUNC6 (dump_file, "EXTENDED_DEF, ");
		  if (source_mode != MAX_MACHINE_MODE
		      && source_mode_unsigned != MAX_MACHINE_MODE)
		    {
		      FUNC6 (dump_file, "positive const, ");
		      FUNC6 (dump_file, "source_mode_signed = %s, ",
			       FUNC3 (source_mode));
		      FUNC6 (dump_file, "source_mode_unsigned = %s\n",
			       FUNC3 (source_mode_unsigned));
		    }
		  else if (source_mode != MAX_MACHINE_MODE)
		    FUNC6 (dump_file, "source_mode_signed = %s\n",
			     FUNC3 (source_mode));
		  else
		    FUNC6 (dump_file, "source_mode_unsigned = %s\n",
			     FUNC3 (source_mode_unsigned));
		  break;
		default :
		  FUNC7 ();
		}
	    }
	}
    }
}