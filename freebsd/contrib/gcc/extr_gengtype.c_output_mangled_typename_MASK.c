#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_4__* type_p ;
typedef  int /*<<< orphan*/  outf_p ;
struct TYPE_7__ {TYPE_4__* stru; TYPE_4__** param; } ;
struct TYPE_6__ {int /*<<< orphan*/  tag; } ;
struct TYPE_8__ {TYPE_2__ param_struct; TYPE_1__ s; TYPE_4__* p; } ;
struct TYPE_9__ {int kind; TYPE_3__ u; } ;

/* Variables and functions */
 int NUM_PARAM ; 
#define  TYPE_ARRAY 135 
#define  TYPE_LANG_STRUCT 134 
#define  TYPE_PARAM_STRUCT 133 
#define  TYPE_POINTER 132 
#define  TYPE_SCALAR 131 
#define  TYPE_STRING 130 
#define  TYPE_STRUCT 129 
#define  TYPE_UNION 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (outf_p of, type_p t)
{
  if (t == NULL)
    FUNC1 (of, "Z");
  else switch (t->kind)
    {
    case TYPE_POINTER:
      FUNC1 (of, "P");
      FUNC3 (of, t->u.p);
      break;
    case TYPE_SCALAR:
      FUNC1 (of, "I");
      break;
    case TYPE_STRING:
      FUNC1 (of, "S");
      break;
    case TYPE_STRUCT:
    case TYPE_UNION:
    case TYPE_LANG_STRUCT:
      FUNC1 (of, "%lu%s", (unsigned long) FUNC2 (t->u.s.tag), t->u.s.tag);
      break;
    case TYPE_PARAM_STRUCT:
      {
	int i;
	for (i = 0; i < NUM_PARAM; i++)
	  if (t->u.param_struct.param[i] != NULL)
	    FUNC3 (of, t->u.param_struct.param[i]);
	FUNC3 (of, t->u.param_struct.stru);
      }
      break;
    case TYPE_ARRAY:
      FUNC0 ();
    }
}