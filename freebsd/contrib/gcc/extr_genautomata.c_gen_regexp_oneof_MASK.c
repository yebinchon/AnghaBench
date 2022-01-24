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
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (char const*) ; 
 char** FUNC4 (char const*,int*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reserv_str ; 
 int /*<<< orphan*/  rm_oneof ; 

__attribute__((used)) static regexp_t
FUNC5 (const char *str)
{
  regexp_t oneof;
  char **oneof_vect;
  int els_num;
  int i;

  oneof_vect = FUNC4 (str, &els_num, '|', TRUE);
  if (oneof_vect == NULL)
    FUNC2 ("invalid `%s' in reservation `%s'", str, reserv_str);
  if (els_num > 1)
    {
      oneof = FUNC1 (sizeof (struct regexp)
			   + sizeof (regexp_t) * (els_num - 1));
      oneof->mode = rm_oneof;
      FUNC0 (oneof)->regexps_num = els_num;
      for (i = 0; i < els_num; i++)
	FUNC0 (oneof)->regexps [i] = FUNC3 (oneof_vect [i]);
      return oneof;
    }
  else
    return FUNC3 (str);
}