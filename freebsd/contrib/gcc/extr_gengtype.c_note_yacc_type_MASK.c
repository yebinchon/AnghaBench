#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ type_p ;
struct fileloc {int dummy; } ;
typedef  TYPE_2__* pair_p ;
typedef  int /*<<< orphan*/  options_p ;
struct TYPE_7__ {scalar_t__ type; struct TYPE_7__* next; int /*<<< orphan*/ * name; int /*<<< orphan*/  line; TYPE_1__* opt; } ;
struct TYPE_6__ {int /*<<< orphan*/ * info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct fileloc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct fileloc*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4 (options_p o, pair_p fields, pair_p typeinfo,
		struct fileloc *pos)
{
  pair_p p;
  pair_p *p_p;

  for (p = typeinfo; p; p = p->next)
    {
      pair_p m;

      if (p->name == NULL)
	continue;

      if (p->type == (type_p) 1)
	{
	  pair_p pp;
	  int ok = 0;

	  for (pp = typeinfo; pp; pp = pp->next)
	    if (pp->type != (type_p) 1
		&& FUNC3 (pp->opt->info, p->opt->info) == 0)
	      {
		ok = 1;
		break;
	      }
	  if (! ok)
	    continue;
	}

      for (m = fields; m; m = m->next)
	if (FUNC3 (m->name, p->name) == 0)
	  p->type = m->type;
      if (p->type == NULL)
	{
	  FUNC1 (&p->line,
			 "couldn't match fieldname `%s'", p->name);
	  p->name = NULL;
	}
    }

  p_p = &typeinfo;
  while (*p_p)
    {
      pair_p p = *p_p;

      if (p->name == NULL
	  || p->type == (type_p) 1)
	*p_p = p->next;
      else
	p_p = &p->next;
    }

  FUNC0 ("YYSTYPE", FUNC2 ("yy_union", 1, pos, typeinfo, o), pos);
}