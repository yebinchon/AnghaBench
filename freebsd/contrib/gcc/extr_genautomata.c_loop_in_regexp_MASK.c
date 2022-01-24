#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_15__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
typedef  TYPE_1__* regexp_t ;
typedef  TYPE_2__* decl_t ;
struct TYPE_24__ {TYPE_1__* regexp; } ;
struct TYPE_23__ {TYPE_15__* reserv_decl; } ;
struct TYPE_22__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_21__ {int /*<<< orphan*/  mode; } ;
struct TYPE_20__ {int mode; } ;
struct TYPE_19__ {TYPE_1__* regexp; int /*<<< orphan*/  loop_pass_num; } ;
struct TYPE_18__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_17__ {int regexps_num; TYPE_1__** regexps; } ;

/* Variables and functions */
 TYPE_15__* FUNC0 (TYPE_2__*) ; 
 TYPE_13__* FUNC1 (TYPE_1__*) ; 
 TYPE_11__* FUNC2 (TYPE_1__*) ; 
 TYPE_9__* FUNC3 (TYPE_1__*) ; 
 TYPE_7__* FUNC4 (TYPE_1__*) ; 
 TYPE_5__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  curr_loop_pass_num ; 
 int /*<<< orphan*/  dm_reserv ; 
 int /*<<< orphan*/  FUNC6 () ; 
#define  rm_allof 134 
#define  rm_nothing 133 
#define  rm_oneof 132 
#define  rm_repeat 131 
#define  rm_reserv 130 
#define  rm_sequence 129 
#define  rm_unit 128 

__attribute__((used)) static int
FUNC7 (regexp_t regexp, decl_t start_decl)
{
  int i;

  if (regexp == NULL)
    return 0;
  switch (regexp->mode)
    {
      case rm_unit:
	return 0;

    case rm_reserv:
      if (start_decl->mode == dm_reserv
          && FUNC4 (regexp)->reserv_decl == FUNC0 (start_decl))
        return 1;
      else if (FUNC4 (regexp)->reserv_decl->loop_pass_num
	       == curr_loop_pass_num)
        /* declaration has been processed.  */
        return 0;
      else
        {
	  FUNC4 (regexp)->reserv_decl->loop_pass_num
            = curr_loop_pass_num;
          return FUNC7 (FUNC4 (regexp)->reserv_decl->regexp,
                                 start_decl);
        }

    case rm_sequence:
      for (i = 0; i <FUNC5 (regexp)->regexps_num; i++)
	if (FUNC7 (FUNC5 (regexp)->regexps [i], start_decl))
	  return 1;
      return 0;

    case rm_allof:
      for (i = 0; i < FUNC1 (regexp)->regexps_num; i++)
	if (FUNC7 (FUNC1 (regexp)->regexps [i], start_decl))
	  return 1;
      return 0;

    case rm_oneof:
      for (i = 0; i < FUNC2 (regexp)->regexps_num; i++)
	if (FUNC7 (FUNC2 (regexp)->regexps [i], start_decl))
	  return 1;
      return 0;

    case rm_repeat:
      return FUNC7 (FUNC3 (regexp)->regexp, start_decl);

    case rm_nothing:
      return 0;

    default:
      FUNC6 ();
    }
}