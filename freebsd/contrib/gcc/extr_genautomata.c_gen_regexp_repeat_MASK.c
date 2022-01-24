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
struct TYPE_8__ {int repeat_num; TYPE_1__* regexp; } ;
struct TYPE_7__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (char const*) ; 
 char** FUNC5 (char const*,int*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reserv_str ; 
 int /*<<< orphan*/  rm_repeat ; 

__attribute__((used)) static regexp_t
FUNC6 (const char *str)
{
  regexp_t regexp;
  regexp_t repeat;
  char **repeat_vect;
  int els_num;
  int i;

  repeat_vect = FUNC5 (str, &els_num, '*', TRUE);
  if (repeat_vect == NULL)
    FUNC3 ("invalid `%s' in reservation `%s'", str, reserv_str);
  if (els_num > 1)
    {
      regexp = FUNC4 (repeat_vect [0]);
      for (i = 1; i < els_num; i++)
	{
	  repeat = FUNC2 (sizeof (struct regexp));
	  repeat->mode = rm_repeat;
	  FUNC0 (repeat)->regexp = regexp;
	  FUNC0 (repeat)->repeat_num = FUNC1 (repeat_vect [i]);
          if (FUNC0 (repeat)->repeat_num <= 1)
            FUNC3 ("repetition `%s' <= 1 in reservation `%s'",
                   str, reserv_str);
          regexp = repeat;
	}
      return regexp;
    }
  else
    return FUNC4 (str);
}