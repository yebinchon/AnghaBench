#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wind_language_t ;
typedef  int /*<<< orphan*/  unichar ;
typedef  void* rc_uint_type ;
struct TYPE_4__ {size_t len; char const* group_name; int rid; struct TYPE_4__* next; int /*<<< orphan*/  lang_info; int /*<<< orphan*/ * sval; void* nval; int /*<<< orphan*/ * usz; } ;
typedef  TYPE_1__ mc_keyword ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* keyword_top ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned int) ; 
 TYPE_1__* FUNC8 (int) ; 

void
FUNC9 (unichar *usz, int rid, const char *grp, rc_uint_type nv, unichar *sv)
{
  mc_keyword *p, *c, *n;
  size_t len = FUNC6 (usz);

  c = keyword_top;
  p = NULL;
  while (c != NULL)
    {
      if (c->len > len)
	break;
      if (c->len == len)
	{
	  int e = FUNC2 (usz, c->usz, len * sizeof (unichar));

	  if (e < 0)
	    break;
	  if (! e)
	    {
	      if (! FUNC4 (grp, "keyword") || FUNC4 (c->group_name, grp) != 0)
		FUNC1 (FUNC0("Duplicate symbol entered into keyword list."));
	      c->rid = rid;
	      c->nval = nv;
	      c->sval = (!sv ? NULL : FUNC5 (sv));
	      if (! FUNC4 (grp, "language"))
		{
		  const wind_language_t *lag = FUNC7 ((unsigned) nv);

		  if (lag == NULL)
		    FUNC1 ("Language ident 0x%lx is not resolvable.\n", (long) nv);
		  FUNC3 (&c->lang_info, lag, sizeof (*lag));
		}
	      return;
	    }
	}
      c = (p = c)->next;
    }
  n = FUNC8 (sizeof (mc_keyword));
  n->next = c;
  n->len = len;
  n->group_name = grp;
  n->usz = usz;
  n->rid = rid;
  n->nval = nv;
  n->sval = (!sv ? NULL : FUNC5 (sv));
  if (! FUNC4 (grp, "language"))
    {
      const wind_language_t *lag = FUNC7 ((unsigned) nv);
      if (lag == NULL)
	FUNC1 ("Language ident 0x%lx is not resolvable.\n", (long) nv);
      FUNC3 (&n->lang_info, lag, sizeof (*lag));
    }
  if (! p)
    keyword_top = n;
  else
    p->next = n;
}