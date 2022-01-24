#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct regexp {int dummy; } ;
typedef  TYPE_1__* regexp_t ;
struct TYPE_8__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_7__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (char const*) ; 
 char** FUNC3 (char const*,int*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rm_sequence ; 

__attribute__((used)) static regexp_t
FUNC4 (const char *str)
{
  regexp_t sequence;
  char **sequence_vect;
  int els_num;
  int i;

  sequence_vect = FUNC3 (str, &els_num, ',', TRUE);
  if (els_num > 1)
    {
      sequence = FUNC1 (sizeof (struct regexp)
			      + sizeof (regexp_t) * (els_num - 1));
      sequence->mode = rm_sequence;
      FUNC0 (sequence)->regexps_num = els_num;
      for (i = 0; i < els_num; i++)
	FUNC0 (sequence)->regexps [i]
          = FUNC2 (sequence_vect [i]);
      return sequence;
    }
  else
    return FUNC2 (str);
}