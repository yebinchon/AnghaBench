#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_21__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_19__ ;
typedef  struct TYPE_26__   TYPE_17__ ;
typedef  struct TYPE_25__   TYPE_15__ ;
typedef  struct TYPE_24__   TYPE_13__ ;
typedef  struct TYPE_23__   TYPE_11__ ;

/* Type definitions */
struct regexp {int dummy; } ;
typedef  TYPE_1__* regexp_t ;
typedef  TYPE_2__* decl_t ;
struct TYPE_32__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_31__ {int /*<<< orphan*/  name; TYPE_19__* unit_decl; } ;
struct TYPE_30__ {int /*<<< orphan*/  mode; } ;
struct TYPE_29__ {int reserv_is_used; } ;
struct TYPE_28__ {int mode; int /*<<< orphan*/  pos; } ;
struct TYPE_27__ {int unit_is_used; } ;
struct TYPE_26__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_25__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_24__ {TYPE_1__* regexp; } ;
struct TYPE_23__ {TYPE_21__* reserv_decl; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 TYPE_21__* FUNC0 (TYPE_2__*) ; 
 TYPE_19__* FUNC1 (TYPE_2__*) ; 
 TYPE_17__* FUNC2 (TYPE_1__*) ; 
 TYPE_15__* FUNC3 (TYPE_1__*) ; 
 TYPE_13__* FUNC4 (TYPE_1__*) ; 
 TYPE_11__* FUNC5 (TYPE_1__*) ; 
 TYPE_9__* FUNC6 (TYPE_1__*) ; 
 TYPE_7__* FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int) ; 
#define  dm_reserv 135 
#define  dm_unit 134 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
#define  rm_allof 133 
#define  rm_nothing 132 
#define  rm_oneof 131 
#define  rm_repeat 130 
 int rm_reserv ; 
#define  rm_sequence 129 
#define  rm_unit 128 

__attribute__((used)) static regexp_t
FUNC12 (regexp_t regexp)
{
  decl_t decl_in_table;
  regexp_t new_regexp;
  int i;

  switch (regexp->mode)
    {
    case rm_unit:
      decl_in_table = FUNC10 (FUNC7 (regexp)->name);
      if (decl_in_table == NULL)
        FUNC9 ("undeclared unit or reservation `%s'",
	       FUNC7 (regexp)->name);
      else
	switch (decl_in_table->mode)
	  {
	  case dm_unit:
	    FUNC1 (decl_in_table)->unit_is_used = 1;
	    FUNC7 (regexp)->unit_decl = FUNC1 (decl_in_table);
	    break;

	  case dm_reserv:
	    FUNC0 (decl_in_table)->reserv_is_used = 1;
	    new_regexp = FUNC8 (sizeof (struct regexp));
	    new_regexp->mode = rm_reserv;
	    new_regexp->pos = regexp->pos;
	    FUNC5 (new_regexp)->name = FUNC7 (regexp)->name;
	    FUNC5 (new_regexp)->reserv_decl
	      = FUNC0 (decl_in_table);
	    regexp = new_regexp;
	    break;

	  default:
	    FUNC11 ();
	}
      break;
    case rm_sequence:
      for (i = 0; i <FUNC6 (regexp)->regexps_num; i++)
	FUNC6 (regexp)->regexps [i]
	  = FUNC12 (FUNC6 (regexp)->regexps [i]);
      break;
    case rm_allof:
      for (i = 0; i < FUNC2 (regexp)->regexps_num; i++)
	FUNC2 (regexp)->regexps [i]
	  = FUNC12 (FUNC2 (regexp)->regexps [i]);
      break;
    case rm_oneof:
      for (i = 0; i < FUNC3 (regexp)->regexps_num; i++)
	FUNC3 (regexp)->regexps [i]
	  = FUNC12 (FUNC3 (regexp)->regexps [i]);
      break;
    case rm_repeat:
      FUNC4 (regexp)->regexp
	= FUNC12 (FUNC4 (regexp)->regexp);
      break;
    case rm_nothing:
      break;
    default:
      FUNC11 ();
    }
  return regexp;
}