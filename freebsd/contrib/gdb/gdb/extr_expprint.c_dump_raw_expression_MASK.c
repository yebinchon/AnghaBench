#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union exp_element {int dummy; } exp_element ;
struct ui_file {int dummy; } ;
struct expression {int nelts; TYPE_2__* elts; TYPE_1__* language_defn; } ;
struct TYPE_4__ {int /*<<< orphan*/  longconst; int /*<<< orphan*/  opcode; } ;
struct TYPE_3__ {int /*<<< orphan*/  la_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct expression*,struct ui_file*) ; 
 scalar_t__ FUNC2 (char) ; 
 char* FUNC3 (struct expression*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_file*,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5 (struct expression *exp, struct ui_file *stream,
		     char *note)
{
  int elt;
  char *opcode_name;
  char *eltscan;
  int eltsize;

  FUNC0 (stream, "Dump of expression @ ");
  FUNC1 (exp, stream);
  FUNC0 (stream, "'\n\tLanguage %s, %d elements, %ld bytes each.\n",
		    exp->language_defn->la_name, exp->nelts,
		    (long) sizeof (union exp_element));
  FUNC0 (stream, "\t%5s  %20s  %16s  %s\n", "Index", "Opcode",
		    "Hex Value", "String Value");
  for (elt = 0; elt < exp->nelts; elt++)
    {
      FUNC0 (stream, "\t%5d  ", elt);
      opcode_name = FUNC3 (exp, exp->elts[elt].opcode);

      FUNC0 (stream, "%20s  ", opcode_name);
      FUNC4 (stream, 'd', 0, exp->elts[elt].longconst);
      FUNC0 (stream, "  ");

      for (eltscan = (char *) &exp->elts[elt],
	   eltsize = sizeof (union exp_element);
	   eltsize-- > 0;
	   eltscan++)
	{
	  FUNC0 (stream, "%c",
			    FUNC2 (*eltscan) ? (*eltscan & 0xFF) : '.');
	}
      FUNC0 (stream, "\n");
    }
}