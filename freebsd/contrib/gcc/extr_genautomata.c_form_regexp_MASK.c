#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
typedef  TYPE_1__* regexp_t ;
struct TYPE_21__ {int repeat_num; TYPE_1__* regexp; } ;
struct TYPE_20__ {char* name; } ;
struct TYPE_19__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_18__ {char* name; } ;
struct TYPE_17__ {int mode; } ;
struct TYPE_16__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_15__ {int regexps_num; TYPE_1__** regexps; } ;

/* Variables and functions */
 char* NOTHING_NAME ; 
 TYPE_13__* FUNC0 (TYPE_1__*) ; 
 TYPE_11__* FUNC1 (TYPE_1__*) ; 
 TYPE_9__* FUNC2 (TYPE_1__*) ; 
 TYPE_7__* FUNC3 (TYPE_1__*) ; 
 TYPE_5__* FUNC4 (TYPE_1__*) ; 
 TYPE_3__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  irp ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
#define  rm_allof 134 
#define  rm_nothing 133 
#define  rm_oneof 132 
#define  rm_repeat 131 
#define  rm_reserv 130 
#define  rm_sequence 129 
#define  rm_unit 128 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

__attribute__((used)) static void
FUNC11 (regexp_t regexp)
{
  int i;

  switch (regexp->mode)
    {
    case rm_unit: case rm_reserv:
      {
	const char *name = (regexp->mode == rm_unit
			    ? FUNC5 (regexp)->name
			    : FUNC3 (regexp)->name);
	
	FUNC8 (&irp, name, FUNC10 (name));
	break;
      }
      
    case rm_sequence:
      for (i = 0; i < FUNC4 (regexp)->regexps_num; i++)
	{
	  if (i != 0)
	    FUNC7 (&irp, ',');
	  FUNC11 (FUNC4 (regexp)->regexps [i]);
	}
      break;

    case rm_allof:
      FUNC7 (&irp, '(');
      for (i = 0; i < FUNC0 (regexp)->regexps_num; i++)
	{
	  if (i != 0)
            FUNC7 (&irp, '+');
	  if (FUNC0 (regexp)->regexps[i]->mode == rm_sequence
              || FUNC0 (regexp)->regexps[i]->mode == rm_oneof)
            FUNC7 (&irp, '(');
	  FUNC11 (FUNC0 (regexp)->regexps [i]);
	  if (FUNC0 (regexp)->regexps[i]->mode == rm_sequence
              || FUNC0 (regexp)->regexps[i]->mode == rm_oneof)
            FUNC7 (&irp, ')');
        }
      FUNC7 (&irp, ')');
      break;
      
    case rm_oneof:
      for (i = 0; i < FUNC1 (regexp)->regexps_num; i++)
	{
	  if (i != 0)
	    FUNC7 (&irp, '|');
	  if (FUNC1 (regexp)->regexps[i]->mode == rm_sequence)
	    FUNC7 (&irp, '(');
	  FUNC11 (FUNC1 (regexp)->regexps [i]);
	  if (FUNC1 (regexp)->regexps[i]->mode == rm_sequence)
          FUNC7 (&irp, ')');
	}
      break;
      
    case rm_repeat:
      {
	char digits [30];
	
	if (FUNC2 (regexp)->regexp->mode == rm_sequence
	    || FUNC2 (regexp)->regexp->mode == rm_allof
	    || FUNC2 (regexp)->regexp->mode == rm_oneof)
	  FUNC7 (&irp, '(');
	FUNC11 (FUNC2 (regexp)->regexp);
	if (FUNC2 (regexp)->regexp->mode == rm_sequence
	    || FUNC2 (regexp)->regexp->mode == rm_allof
	    || FUNC2 (regexp)->regexp->mode == rm_oneof)
	  FUNC7 (&irp, ')');
	FUNC9 (digits, "*%d", FUNC2 (regexp)->repeat_num);
	FUNC8 (&irp, digits, FUNC10 (digits));
	break;
      }

    case rm_nothing:
      FUNC8 (&irp, NOTHING_NAME, FUNC10 (NOTHING_NAME));
      break;

    default:
      FUNC6 ();
    }
}