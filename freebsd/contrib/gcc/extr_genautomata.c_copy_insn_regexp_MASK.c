#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_15__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
struct regexp {int dummy; } ;
typedef  TYPE_2__* regexp_t ;
struct TYPE_23__ {TYPE_1__* reserv_decl; } ;
struct TYPE_22__ {int regexps_num; TYPE_2__** regexps; } ;
struct TYPE_21__ {int mode; } ;
struct TYPE_20__ {TYPE_2__* regexp; } ;
struct TYPE_19__ {int regexps_num; TYPE_2__** regexps; } ;
struct TYPE_18__ {int regexps_num; TYPE_2__** regexps; } ;
struct TYPE_17__ {TYPE_2__* regexp; } ;

/* Variables and functions */
 TYPE_15__* FUNC0 (TYPE_2__*) ; 
 TYPE_13__* FUNC1 (TYPE_2__*) ; 
 TYPE_11__* FUNC2 (TYPE_2__*) ; 
 TYPE_9__* FUNC3 (TYPE_2__*) ; 
 TYPE_7__* FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
#define  rm_allof 134 
#define  rm_nothing 133 
#define  rm_oneof 132 
#define  rm_repeat 131 
#define  rm_reserv 130 
#define  rm_sequence 129 
#define  rm_unit 128 

__attribute__((used)) static regexp_t
FUNC7 (regexp_t regexp)
{
  regexp_t  result;
  int i;

  switch (regexp->mode)
    {
    case rm_reserv:
      result = FUNC7 (FUNC3 (regexp)->reserv_decl->regexp);
      break;

    case rm_unit:
      result = FUNC5 (regexp, sizeof (struct regexp));
      break;

    case rm_repeat:
      result = FUNC5 (regexp, sizeof (struct regexp));
      FUNC2 (result)->regexp
        = FUNC7 (FUNC2 (regexp)->regexp);
      break;

    case rm_sequence:
      result = FUNC5 (regexp,
                          sizeof (struct regexp) + sizeof (regexp_t)
			  * (FUNC4 (regexp)->regexps_num - 1));
      for (i = 0; i <FUNC4 (regexp)->regexps_num; i++)
	FUNC4 (result)->regexps [i]
	  = FUNC7 (FUNC4 (regexp)->regexps [i]);
      break;

    case rm_allof:
      result = FUNC5 (regexp,
                          sizeof (struct regexp) + sizeof (regexp_t)
			  * (FUNC0 (regexp)->regexps_num - 1));
      for (i = 0; i < FUNC0 (regexp)->regexps_num; i++)
	FUNC0 (result)->regexps [i]
	  = FUNC7 (FUNC0 (regexp)->regexps [i]);
      break;

    case rm_oneof:
      result = FUNC5 (regexp,
                          sizeof (struct regexp) + sizeof (regexp_t)
			  * (FUNC1 (regexp)->regexps_num - 1));
      for (i = 0; i < FUNC1 (regexp)->regexps_num; i++)
	FUNC1 (result)->regexps [i]
	  = FUNC7 (FUNC1 (regexp)->regexps [i]);
      break;

    case rm_nothing:
      result = FUNC5 (regexp, sizeof (struct regexp));
      break;

    default:
      FUNC6 ();
    }
  return result;
}