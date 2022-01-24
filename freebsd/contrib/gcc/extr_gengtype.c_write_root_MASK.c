#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_4__* type_p ;
struct fileloc {int dummy; } ;
typedef  TYPE_5__* pair_p ;
typedef  int /*<<< orphan*/  outf_p ;
typedef  TYPE_6__* options_p ;
struct TYPE_16__ {char const* name; char* info; struct TYPE_16__* next; } ;
struct TYPE_15__ {int /*<<< orphan*/  name; TYPE_4__* type; TYPE_6__* opt; struct TYPE_15__* next; } ;
struct TYPE_12__ {int /*<<< orphan*/  tag; TYPE_5__* fields; } ;
struct TYPE_11__ {TYPE_4__* p; int /*<<< orphan*/ * len; } ;
struct TYPE_13__ {TYPE_2__ s; TYPE_4__* p; TYPE_1__ a; } ;
struct TYPE_14__ {int kind; TYPE_3__ u; } ;

/* Variables and functions */
#define  TYPE_ARRAY 132 
 int const TYPE_PARAM_STRUCT ; 
#define  TYPE_POINTER 131 
#define  TYPE_SCALAR 130 
#define  TYPE_STRING 129 
#define  TYPE_STRUCT 128 
 int TYPE_UNION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (struct fileloc*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 char* FUNC6 (char*,char const*,...) ; 

__attribute__((used)) static void
FUNC7 (outf_p f, pair_p v, type_p type, const char *name, int has_length,
	    struct fileloc *line, const char *if_marked)
{
  switch (type->kind)
    {
    case TYPE_STRUCT:
      {
	pair_p fld;
	for (fld = type->u.s.fields; fld; fld = fld->next)
	  {
	    int skip_p = 0;
	    const char *desc = NULL;
	    options_p o;

	    for (o = fld->opt; o; o = o->next)
	      if (FUNC5 (o->name, "skip") == 0)
		skip_p = 1;
	      else if (FUNC5 (o->name, "desc") == 0)
		desc = o->info;
	      else
		FUNC1 (line,
		       "field `%s' of global `%s' has unknown option `%s'",
			       fld->name, name, o->name);

	    if (skip_p)
	      continue;
	    else if (desc && fld->type->kind == TYPE_UNION)
	      {
		pair_p validf = NULL;
		pair_p ufld;

		for (ufld = fld->type->u.s.fields; ufld; ufld = ufld->next)
		  {
		    const char *tag = NULL;
		    options_p oo;

		    for (oo = ufld->opt; oo; oo = oo->next)
		      if (FUNC5 (oo->name, "tag") == 0)
			tag = oo->info;
		    if (tag == NULL || FUNC5 (tag, desc) != 0)
		      continue;
		    if (validf != NULL)
		      FUNC1 (line,
			   "both `%s.%s.%s' and `%s.%s.%s' have tag `%s'",
				     name, fld->name, validf->name,
				     name, fld->name, ufld->name,
				     tag);
		    validf = ufld;
		  }
		if (validf != NULL)
		  {
		    char *newname;
		    newname = FUNC6 ("%s.%s.%s",
					 name, fld->name, validf->name);
		    FUNC7 (f, v, validf->type, newname, 0, line,
				if_marked);
		    FUNC2 (newname);
		  }
	      }
	    else if (desc)
	      FUNC1 (line,
		     "global `%s.%s' has `desc' option but is not union",
			     name, fld->name);
	    else
	      {
		char *newname;
		newname = FUNC6 ("%s.%s", name, fld->name);
		FUNC7 (f, v, fld->type, newname, 0, line, if_marked);
		FUNC2 (newname);
	      }
	  }
      }
      break;

    case TYPE_ARRAY:
      {
	char *newname;
	newname = FUNC6 ("%s[0]", name);
	FUNC7 (f, v, type->u.a.p, newname, has_length, line, if_marked);
	FUNC2 (newname);
      }
      break;

    case TYPE_POINTER:
      {
	type_p ap, tp;

	FUNC3 (f, "  {\n");
	FUNC3 (f, "    &%s,\n", name);
	FUNC3 (f, "    1");

	for (ap = v->type; ap->kind == TYPE_ARRAY; ap = ap->u.a.p)
	  if (ap->u.a.len[0])
	    FUNC3 (f, " * (%s)", ap->u.a.len);
	  else if (ap == v->type)
	    FUNC3 (f, " * ARRAY_SIZE (%s)", v->name);
	FUNC3 (f, ",\n");
	FUNC3 (f, "    sizeof (%s", v->name);
	for (ap = v->type; ap->kind == TYPE_ARRAY; ap = ap->u.a.p)
	  FUNC3 (f, "[0]");
	FUNC3 (f, "),\n");

	tp = type->u.p;

	if (! has_length && FUNC0 (tp))
	  {
	    FUNC3 (f, "    &gt_ggc_mx_%s,\n", tp->u.s.tag);
	    FUNC3 (f, "    &gt_pch_nx_%s", tp->u.s.tag);
	  }
	else if (! has_length && tp->kind == TYPE_PARAM_STRUCT)
	  {
	    FUNC3 (f, "    &gt_ggc_m_");
	    FUNC4 (f, tp);
	    FUNC3 (f, ",\n    &gt_pch_n_");
	    FUNC4 (f, tp);
	  }
	else if (has_length
		 && (tp->kind == TYPE_POINTER || FUNC0 (tp)))
	  {
	    FUNC3 (f, "    &gt_ggc_ma_%s,\n", name);
	    FUNC3 (f, "    &gt_pch_na_%s", name);
	  }
	else
	  {
	    FUNC1 (line,
			   "global `%s' is pointer to unimplemented type",
			   name);
	  }
	if (if_marked)
	  FUNC3 (f, ",\n    &%s", if_marked);
	FUNC3 (f, "\n  },\n");
      }
      break;

    case TYPE_STRING:
      {
	FUNC3 (f, "  {\n");
	FUNC3 (f, "    &%s,\n", name);
	FUNC3 (f, "    1, \n");
	FUNC3 (f, "    sizeof (%s),\n", v->name);
	FUNC3 (f, "    &gt_ggc_m_S,\n");
	FUNC3 (f, "    (gt_pointer_walker) &gt_pch_n_S\n");
	FUNC3 (f, "  },\n");
      }
      break;

    case TYPE_SCALAR:
      break;

    default:
      FUNC1 (line,
		     "global `%s' is unimplemented type",
		     name);
    }
}