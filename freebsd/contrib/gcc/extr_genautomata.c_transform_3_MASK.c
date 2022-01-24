#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct regexp {int dummy; } ;
typedef  TYPE_1__* regexp_t ;
struct TYPE_15__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_14__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_13__ {int mode; int /*<<< orphan*/  pos; } ;
struct TYPE_12__ {int regexps_num; TYPE_1__** regexps; } ;

/* Variables and functions */
 TYPE_10__* FUNC0 (TYPE_1__*) ; 
 TYPE_8__* FUNC1 (TYPE_1__*) ; 
 TYPE_6__* FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int regexp_transformed_p ; 
 scalar_t__ rm_allof ; 
#define  rm_nothing 130 
 scalar_t__ rm_oneof ; 
#define  rm_sequence 129 
#define  rm_unit 128 

__attribute__((used)) static regexp_t
FUNC6 (regexp_t regexp)
{
  if (regexp->mode == rm_sequence)
    {
      regexp_t oneof = NULL;
      int oneof_index = 0;
      regexp_t result;
      regexp_t sequence;
      int i, j;

      for (i = 0; i <FUNC2 (regexp)->regexps_num; i++)
	if (FUNC2 (regexp)->regexps [i]->mode == rm_oneof)
	  {
	    oneof_index = i;
	    oneof = FUNC2 (regexp)->regexps [i];
	    break;
	  }
      if (i < FUNC2 (regexp)->regexps_num)
	{
	  FUNC5 (FUNC1 (oneof)->regexps_num > 1
		      && FUNC2 (regexp)->regexps_num > 1);
	  result = FUNC4 (sizeof (struct regexp)
				+ sizeof (regexp_t)
				* (FUNC1 (oneof)->regexps_num - 1));
	  result->mode = rm_oneof;
	  result->pos = regexp->pos;
	  FUNC1 (result)->regexps_num
	    = FUNC1 (oneof)->regexps_num;
	  for (i = 0; i < FUNC1 (result)->regexps_num; i++)
	    {
	      sequence
                = FUNC4 (sizeof (struct regexp)
                               + sizeof (regexp_t)
                               * (FUNC2 (regexp)->regexps_num - 1));
	      sequence->mode = rm_sequence;
	      sequence->pos = regexp->pos;
	      FUNC2 (sequence)->regexps_num
                = FUNC2 (regexp)->regexps_num;
              FUNC1 (result)->regexps [i] = sequence;
	      for (j = 0; j < FUNC2 (sequence)->regexps_num; j++)
		if (j != oneof_index)
		  FUNC2 (sequence)->regexps [j]
		    = FUNC3 (FUNC2 (regexp)->regexps [j]);
		else
		  FUNC2 (sequence)->regexps [j]
		    = FUNC3 (FUNC1 (oneof)->regexps [i]);
	    }
	  regexp_transformed_p = 1;
	  regexp = result;
	}
    }
  else if (regexp->mode == rm_allof)
    {
      regexp_t oneof = NULL;
      regexp_t seq;
      int oneof_index = 0;
      int max_seq_length, allof_length;
      regexp_t result;
      regexp_t allof = NULL;
      regexp_t allof_op = NULL;
      int i, j;

      for (i = 0; i < FUNC0 (regexp)->regexps_num; i++)
	if (FUNC0 (regexp)->regexps [i]->mode == rm_oneof)
	  {
	    oneof_index = i;
	    oneof = FUNC0 (regexp)->regexps [i];
	    break;
	  }
      if (i < FUNC0 (regexp)->regexps_num)
	{
	  FUNC5 (FUNC1 (oneof)->regexps_num > 1
		      && FUNC0 (regexp)->regexps_num > 1);
	  result = FUNC4 (sizeof (struct regexp)
				+ sizeof (regexp_t)
				* (FUNC1 (oneof)->regexps_num - 1));
	  result->mode = rm_oneof;
	  result->pos = regexp->pos;
	  FUNC1 (result)->regexps_num
	    = FUNC1 (oneof)->regexps_num;
	  for (i = 0; i < FUNC1 (result)->regexps_num; i++)
	    {
	      allof
		= FUNC4 (sizeof (struct regexp)
                               + sizeof (regexp_t)
			       * (FUNC0 (regexp)->regexps_num - 1));
	      allof->mode = rm_allof;
	      allof->pos = regexp->pos;
	      FUNC0 (allof)->regexps_num
                = FUNC0 (regexp)->regexps_num;
              FUNC1 (result)->regexps [i] = allof;
	      for (j = 0; j < FUNC0 (allof)->regexps_num; j++)
		if (j != oneof_index)
		  FUNC0 (allof)->regexps [j]
		    = FUNC3 (FUNC0 (regexp)->regexps [j]);
		else
		  FUNC0 (allof)->regexps [j]
		    = FUNC3 (FUNC1 (oneof)->regexps [i]);
	    }
	  regexp_transformed_p = 1;
	  regexp = result;
	}
      max_seq_length = 0;
      if (regexp->mode == rm_allof)
	for (i = 0; i < FUNC0 (regexp)->regexps_num; i++)
	  {
	    switch (FUNC0 (regexp)->regexps [i]->mode)
	      {
	      case rm_sequence:
		seq = FUNC0 (regexp)->regexps [i];
		if (max_seq_length < FUNC2 (seq)->regexps_num)
		  max_seq_length = FUNC2 (seq)->regexps_num;
		break;

	      case rm_unit:
	      case rm_nothing:
		break;

	      default:
		max_seq_length = 0;
		goto break_for;
	      }
	  }
    break_for:
      if (max_seq_length != 0)
	{
	  FUNC5 (max_seq_length != 1
		      && FUNC0 (regexp)->regexps_num > 1);
	  result = FUNC4 (sizeof (struct regexp)
				+ sizeof (regexp_t) * (max_seq_length - 1));
	  result->mode = rm_sequence;
	  result->pos = regexp->pos;
	  FUNC2 (result)->regexps_num = max_seq_length;
	  for (i = 0; i < max_seq_length; i++)
	    {
	      allof_length = 0;
	      for (j = 0; j < FUNC0 (regexp)->regexps_num; j++)
		switch (FUNC0 (regexp)->regexps [j]->mode)
		  {
		  case rm_sequence:
		    if (i < (FUNC2 (FUNC0 (regexp)
					      ->regexps [j])->regexps_num))
		      {
			allof_op
			  = (FUNC2 (FUNC0 (regexp)
					      ->regexps [j])
			     ->regexps [i]);
			allof_length++;
		      }
		    break;
		  case rm_unit:
		  case rm_nothing:
		    if (i == 0)
		      {
			allof_op = FUNC0 (regexp)->regexps [j];
			allof_length++;
		      }
		    break;
		  default:
		    break;
		  }
	      
	      if (allof_length == 1)
		FUNC2 (result)->regexps [i] = allof_op;
	      else
		{
		  allof = FUNC4 (sizeof (struct regexp)
				       + sizeof (regexp_t)
				       * (allof_length - 1));
		  allof->mode = rm_allof;
		  allof->pos = regexp->pos;
		  FUNC0 (allof)->regexps_num = allof_length;
		  FUNC2 (result)->regexps [i] = allof;
		  allof_length = 0;
		  for (j = 0; j < FUNC0 (regexp)->regexps_num; j++)
		    if (FUNC0 (regexp)->regexps [j]->mode == rm_sequence
			&& (i <
			    (FUNC2 (FUNC0 (regexp)
					      ->regexps [j])->regexps_num)))
		      {
			allof_op = (FUNC2 (FUNC0 (regexp)
						     ->regexps [j])
				    ->regexps [i]);
			FUNC0 (allof)->regexps [allof_length]
			  = allof_op;
			allof_length++;
		      }
		    else if (i == 0
			     && (FUNC0 (regexp)->regexps [j]->mode
				 == rm_unit
				 || (FUNC0 (regexp)->regexps [j]->mode
				     == rm_nothing)))
		      {
			allof_op = FUNC0 (regexp)->regexps [j];
			FUNC0 (allof)->regexps [allof_length]
			  = allof_op;
			allof_length++;
		      }
		}
	    }
	  regexp_transformed_p = 1;
	  regexp = result;
	}
    }
  return regexp;
}