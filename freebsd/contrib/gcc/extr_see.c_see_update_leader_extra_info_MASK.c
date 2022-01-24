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
struct web_entry {scalar_t__ extra_info; } ;
struct see_entry_extra_info {scalar_t__ relevancy; int /*<<< orphan*/  source_mode_signed; int /*<<< orphan*/  source_mode; int /*<<< orphan*/  source_mode_unsigned; } ;

/* Variables and functions */
#define  EXTENDED_DEF 132 
 int /*<<< orphan*/  MAX_MACHINE_MODE ; 
#define  NOT_RELEVANT 131 
#define  RELEVANT_USE 130 
#define  SIGN_EXTENDED_DEF 129 
#define  ZERO_EXTENDED_DEF 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct web_entry* FUNC2 (struct web_entry*) ; 
 scalar_t__ FUNC3 (struct web_entry*,struct web_entry*) ; 

__attribute__((used)) static bool
FUNC4 (struct web_entry *first, struct web_entry *second)
{
  struct see_entry_extra_info *first_ei, *second_ei;

  first = FUNC2 (first);
  second = FUNC2 (second);

  if (FUNC3 (first, second))
    return true;

  first_ei = (struct see_entry_extra_info *) first->extra_info;
  second_ei = (struct see_entry_extra_info *) second->extra_info;

  FUNC0 (first_ei && second_ei);

  if (second_ei->relevancy == NOT_RELEVANT)
    {
      first_ei->relevancy = NOT_RELEVANT;
      return false;
    }
  switch (first_ei->relevancy)
    {
    case NOT_RELEVANT:
      break;
    case RELEVANT_USE:
      switch (second_ei->relevancy)
	{
	case RELEVANT_USE:
	  break;
	case EXTENDED_DEF:
	  first_ei->relevancy = second_ei->relevancy;
	  first_ei->source_mode_signed = second_ei->source_mode_signed;
	  first_ei->source_mode_unsigned = second_ei->source_mode_unsigned;
	  break;
	case SIGN_EXTENDED_DEF:
	case ZERO_EXTENDED_DEF:
	  first_ei->relevancy = second_ei->relevancy;
	  first_ei->source_mode = second_ei->source_mode;
	  break;
	default:
	  FUNC1 ();
	}
      break;
    case SIGN_EXTENDED_DEF:
      switch (second_ei->relevancy)
	{
	case SIGN_EXTENDED_DEF:
	  /* The mode of the root should be the wider one in this case.  */
	  first_ei->source_mode =
	    (first_ei->source_mode > second_ei->source_mode) ?
	    first_ei->source_mode : second_ei->source_mode;
	  break;
	case RELEVANT_USE:
	  break;
	case ZERO_EXTENDED_DEF:
	  /* Don't mix webs with zero extend and sign extend.  */
	  first_ei->relevancy = NOT_RELEVANT;
	  break;
	case EXTENDED_DEF:
	  if (second_ei->source_mode_signed == MAX_MACHINE_MODE)
	    first_ei->relevancy = NOT_RELEVANT;
	  else
	    /* The mode of the root should be the wider one in this case.  */
	    first_ei->source_mode =
	      (first_ei->source_mode > second_ei->source_mode_signed) ?
	      first_ei->source_mode : second_ei->source_mode_signed;
	  break;
	default:
	  FUNC1 ();
	}
      break;
    /* This case is similar to the previous one, with little changes.  */
    case ZERO_EXTENDED_DEF:
      switch (second_ei->relevancy)
	{
	case SIGN_EXTENDED_DEF:
	  /* Don't mix webs with zero extend and sign extend.  */
	  first_ei->relevancy = NOT_RELEVANT;
	  break;
	case RELEVANT_USE:
	  break;
	case ZERO_EXTENDED_DEF:
	  /* The mode of the root should be the wider one in this case.  */
	  first_ei->source_mode =
	    (first_ei->source_mode > second_ei->source_mode) ?
	    first_ei->source_mode : second_ei->source_mode;
	  break;
	case EXTENDED_DEF:
	  if (second_ei->source_mode_unsigned == MAX_MACHINE_MODE)
	    first_ei->relevancy = NOT_RELEVANT;
	  else
	    /* The mode of the root should be the wider one in this case.  */
	    first_ei->source_mode =
	      (first_ei->source_mode > second_ei->source_mode_unsigned) ?
	      first_ei->source_mode : second_ei->source_mode_unsigned;
	  break;
	default:
	  FUNC1 ();
	}
      break;
    case EXTENDED_DEF:
      if (first_ei->source_mode_signed != MAX_MACHINE_MODE
	  && first_ei->source_mode_unsigned != MAX_MACHINE_MODE)
	{
	  switch (second_ei->relevancy)
	    {
	    case SIGN_EXTENDED_DEF:
	      first_ei->relevancy = SIGN_EXTENDED_DEF;
	      first_ei->source_mode =
		(first_ei->source_mode_signed > second_ei->source_mode) ?
		first_ei->source_mode_signed : second_ei->source_mode;
	      break;
	    case RELEVANT_USE:
	      break;
	    case ZERO_EXTENDED_DEF:
	      first_ei->relevancy = ZERO_EXTENDED_DEF;
	      first_ei->source_mode =
		(first_ei->source_mode_unsigned > second_ei->source_mode) ?
		first_ei->source_mode_unsigned : second_ei->source_mode;
	      break;
	    case EXTENDED_DEF:
	      if (second_ei->source_mode_unsigned != MAX_MACHINE_MODE)
		first_ei->source_mode_unsigned =
		  (first_ei->source_mode_unsigned >
		  second_ei->source_mode_unsigned) ?
		  first_ei->source_mode_unsigned :
		  second_ei->source_mode_unsigned;
	      if (second_ei->source_mode_signed != MAX_MACHINE_MODE)
		first_ei->source_mode_signed =
		  (first_ei->source_mode_signed >
		  second_ei->source_mode_signed) ?
		  first_ei->source_mode_signed : second_ei->source_mode_signed;
	      break;
	    default:
	      FUNC1 ();
	    }
	}
      else if (first_ei->source_mode_signed == MAX_MACHINE_MODE)
	{
	  FUNC0 (first_ei->source_mode_unsigned != MAX_MACHINE_MODE);
	  switch (second_ei->relevancy)
	    {
	    case SIGN_EXTENDED_DEF:
	      first_ei->relevancy = NOT_RELEVANT;
	      break;
	    case RELEVANT_USE:
	      break;
	    case ZERO_EXTENDED_DEF:
	      first_ei->relevancy = ZERO_EXTENDED_DEF;
	      first_ei->source_mode =
		(first_ei->source_mode_unsigned > second_ei->source_mode) ?
		first_ei->source_mode_unsigned : second_ei->source_mode;
	      break;
	    case EXTENDED_DEF:
	      if (second_ei->source_mode_unsigned == MAX_MACHINE_MODE)
		first_ei->relevancy = NOT_RELEVANT;
	      else
		first_ei->source_mode_unsigned =
		  (first_ei->source_mode_unsigned >
		  second_ei->source_mode_unsigned) ?
		  first_ei->source_mode_unsigned :
		  second_ei->source_mode_unsigned;
	      break;
	    default:
	      FUNC1 ();
	    }
	}
      else
	{
	  FUNC0 (first_ei->source_mode_unsigned == MAX_MACHINE_MODE);
	  FUNC0 (first_ei->source_mode_signed != MAX_MACHINE_MODE);
	  switch (second_ei->relevancy)
	    {
	    case SIGN_EXTENDED_DEF:
	      first_ei->relevancy = SIGN_EXTENDED_DEF;
	      first_ei->source_mode =
		(first_ei->source_mode_signed > second_ei->source_mode) ?
		first_ei->source_mode_signed : second_ei->source_mode;
	      break;
	    case RELEVANT_USE:
	      break;
	    case ZERO_EXTENDED_DEF:
	      first_ei->relevancy = NOT_RELEVANT;
	      break;
	    case EXTENDED_DEF:
	      if (second_ei->source_mode_signed == MAX_MACHINE_MODE)
		first_ei->relevancy = NOT_RELEVANT;
	      else
		first_ei->source_mode_signed =
		  (first_ei->source_mode_signed >
		  second_ei->source_mode_signed) ?
		  first_ei->source_mode_signed : second_ei->source_mode_signed;
	      break;
	    default:
	      FUNC1 ();
	    }
	}
      break;
    default:
      /* Unknown patern type.  */
      FUNC1 ();
    }

  return false;
}