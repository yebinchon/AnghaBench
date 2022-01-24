#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  enum bfd_endian { ____Placeholder_bfd_endian } bfd_endian ;
struct TYPE_8__ {int byteorder; TYPE_1__* alternative_target; } ;
typedef  TYPE_2__ bfd_target ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_11__ {scalar_t__ endian; } ;
struct TYPE_10__ {int /*<<< orphan*/ * hash; } ;
struct TYPE_9__ {scalar_t__ name; } ;
struct TYPE_7__ {int byteorder; scalar_t__ name; } ;

/* Variables and functions */
 int BFD_ENDIAN_BIG ; 
 int BFD_ENDIAN_LITTLE ; 
 scalar_t__ ENDIAN_BIG ; 
 scalar_t__ ENDIAN_UNSET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ bfd_error_invalid_target ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC3 (char const*,scalar_t__) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  closest_target_match ; 
 TYPE_5__ command_line ; 
 int /*<<< orphan*/  delete_output_file_on_failure ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  g_switch_value ; 
 int /*<<< orphan*/  get_target ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  ldfile_output_architecture ; 
 int /*<<< orphan*/  ldfile_output_machine ; 
 TYPE_4__ link_info ; 
 scalar_t__ output_target ; 
 TYPE_3__* winner ; 

__attribute__((used)) static bfd *
FUNC10 (const char *name)
{
  bfd *output;

  output_target = FUNC9 ();

  /* Has the user requested a particular endianness on the command
     line?  */
  if (command_line.endian != ENDIAN_UNSET)
    {
      const bfd_target *target;
      enum bfd_endian desired_endian;

      /* Get the chosen target.  */
      target = FUNC4 (get_target, (void *) output_target);

      /* If the target is not supported, we cannot do anything.  */
      if (target != NULL)
	{
	  if (command_line.endian == ENDIAN_BIG)
	    desired_endian = BFD_ENDIAN_BIG;
	  else
	    desired_endian = BFD_ENDIAN_LITTLE;

	  /* See if the target has the wrong endianness.  This should
	     not happen if the linker script has provided big and
	     little endian alternatives, but some scrips don't do
	     this.  */
	  if (target->byteorder != desired_endian)
	    {
	      /* If it does, then see if the target provides
		 an alternative with the correct endianness.  */
	      if (target->alternative_target != NULL
		  && (target->alternative_target->byteorder == desired_endian))
		output_target = target->alternative_target->name;
	      else
		{
		  /* Try to find a target as similar as possible to
		     the default target, but which has the desired
		     endian characteristic.  */
		  FUNC4 (closest_target_match,
					 (void *) target);

		  /* Oh dear - we could not find any targets that
		     satisfy our requirements.  */
		  if (winner == NULL)
		    FUNC8 (FUNC0("%P: warning: could not find any targets"
			     " that match endianness requirement\n"));
		  else
		    output_target = winner->name;
		}
	    }
	}
    }

  output = FUNC3 (name, output_target);

  if (output == NULL)
    {
      if (FUNC1 () == bfd_error_invalid_target)
	FUNC8 (FUNC0("%P%F: target %s not found\n"), output_target);

      FUNC8 (FUNC0("%P%F: cannot open output file %s: %E\n"), name);
    }

  delete_output_file_on_failure = TRUE;

  if (! FUNC6 (output, bfd_object))
    FUNC8 (FUNC0("%P%F:%s: can not make object file: %E\n"), name);
  if (! FUNC5 (output,
			   ldfile_output_architecture,
			   ldfile_output_machine))
    FUNC8 (FUNC0("%P%F:%s: can not set architecture: %E\n"), name);

  link_info.hash = FUNC2 (output);
  if (link_info.hash == NULL)
    FUNC8 (FUNC0("%P%F: can not create hash table: %E\n"));

  FUNC7 (output, g_switch_value);
  return output;
}