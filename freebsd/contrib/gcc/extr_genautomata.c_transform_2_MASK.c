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
struct TYPE_13__ {scalar_t__ mode; int /*<<< orphan*/  pos; } ;
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
 scalar_t__ rm_oneof ; 
 scalar_t__ rm_sequence ; 

__attribute__((used)) static regexp_t
FUNC6 (regexp_t regexp)
{
  if (regexp->mode == rm_sequence)
    {
      regexp_t sequence = NULL;
      regexp_t result;
      int sequence_index = 0;
      int i, j;

      for (i = 0; i < FUNC2 (regexp)->regexps_num; i++)
	if (FUNC2 (regexp)->regexps [i]->mode == rm_sequence)
	  {
	    sequence_index = i;
	    sequence = FUNC2 (regexp)->regexps [i];
	    break;
	  }
      if (i < FUNC2 (regexp)->regexps_num)
	{
	  FUNC5 (FUNC2 (sequence)->regexps_num > 1
		      && FUNC2 (regexp)->regexps_num > 1);
	  result = FUNC4 (sizeof (struct regexp)
                                + sizeof (regexp_t)
				* (FUNC2 (regexp)->regexps_num
                                   + FUNC2 (sequence)->regexps_num
                                   - 2));
	  result->mode = rm_sequence;
	  result->pos = regexp->pos;
	  FUNC2 (result)->regexps_num
            = (FUNC2 (regexp)->regexps_num
               + FUNC2 (sequence)->regexps_num - 1);
	  for (i = 0; i < FUNC2 (regexp)->regexps_num; i++)
            if (i < sequence_index)
              FUNC2 (result)->regexps [i]
                = FUNC3 (FUNC2 (regexp)->regexps [i]);
            else if (i > sequence_index)
              FUNC2 (result)->regexps
                [i + FUNC2 (sequence)->regexps_num - 1]
                = FUNC3 (FUNC2 (regexp)->regexps [i]);
            else
              for (j = 0; j < FUNC2 (sequence)->regexps_num; j++)
                FUNC2 (result)->regexps [i + j]
                  = FUNC3 (FUNC2 (sequence)->regexps [j]);
	  regexp_transformed_p = 1;
	  regexp = result;
	}
    }
  else if (regexp->mode == rm_allof)
    {
      regexp_t allof = NULL;
      regexp_t result;
      int allof_index = 0;
      int i, j;

      for (i = 0; i < FUNC0 (regexp)->regexps_num; i++)
	if (FUNC0 (regexp)->regexps [i]->mode == rm_allof)
	  {
	    allof_index = i;
	    allof = FUNC0 (regexp)->regexps [i];
	    break;
	  }
      if (i < FUNC0 (regexp)->regexps_num)
	{
	  FUNC5 (FUNC0 (allof)->regexps_num > 1
		      && FUNC0 (regexp)->regexps_num > 1);
	  result = FUNC4 (sizeof (struct regexp)
                                + sizeof (regexp_t)
				* (FUNC0 (regexp)->regexps_num
                                   + FUNC0 (allof)->regexps_num - 2));
	  result->mode = rm_allof;
	  result->pos = regexp->pos;
	  FUNC0 (result)->regexps_num
            = (FUNC0 (regexp)->regexps_num
               + FUNC0 (allof)->regexps_num - 1);
	  for (i = 0; i < FUNC0 (regexp)->regexps_num; i++)
            if (i < allof_index)
              FUNC0 (result)->regexps [i]
                = FUNC3 (FUNC0 (regexp)->regexps [i]);
            else if (i > allof_index)
              FUNC0 (result)->regexps
                [i + FUNC0 (allof)->regexps_num - 1]
                = FUNC3 (FUNC0 (regexp)->regexps [i]);
            else
              for (j = 0; j < FUNC0 (allof)->regexps_num; j++)
                FUNC0 (result)->regexps [i + j]
                  = FUNC3 (FUNC0 (allof)->regexps [j]);
	  regexp_transformed_p = 1;
	  regexp = result;
	}
    }
  else if (regexp->mode == rm_oneof)
    {
      regexp_t oneof = NULL;
      regexp_t result;
      int oneof_index = 0;
      int i, j;

      for (i = 0; i < FUNC1 (regexp)->regexps_num; i++)
	if (FUNC1 (regexp)->regexps [i]->mode == rm_oneof)
	  {
	    oneof_index = i;
	    oneof = FUNC1 (regexp)->regexps [i];
	    break;
	  }
      if (i < FUNC1 (regexp)->regexps_num)
	{
	  FUNC5 (FUNC1 (oneof)->regexps_num > 1
		      && FUNC1 (regexp)->regexps_num > 1);
	  result = FUNC4 (sizeof (struct regexp)
				+ sizeof (regexp_t)
				* (FUNC1 (regexp)->regexps_num
                                   + FUNC1 (oneof)->regexps_num - 2));
	  result->mode = rm_oneof;
	  result->pos = regexp->pos;
	  FUNC1 (result)->regexps_num
	    = (FUNC1 (regexp)->regexps_num
               + FUNC1 (oneof)->regexps_num - 1);
	  for (i = 0; i < FUNC1 (regexp)->regexps_num; i++)
            if (i < oneof_index)
              FUNC1 (result)->regexps [i]
                = FUNC3 (FUNC1 (regexp)->regexps [i]);
            else if (i > oneof_index)
              FUNC1 (result)->regexps
                [i + FUNC1 (oneof)->regexps_num - 1]
                = FUNC3 (FUNC1 (regexp)->regexps [i]);
            else
              for (j = 0; j < FUNC1 (oneof)->regexps_num; j++)
                FUNC1 (result)->regexps [i + j]
                  = FUNC3 (FUNC1 (oneof)->regexps [j]);
	  regexp_transformed_p = 1;
	  regexp = result;
	}
    }
  return regexp;
}