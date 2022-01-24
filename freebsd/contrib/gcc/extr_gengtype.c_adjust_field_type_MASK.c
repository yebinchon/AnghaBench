#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_7__* type_p ;
typedef  TYPE_8__* options_p ;
struct TYPE_34__ {char const* name; char* info; struct TYPE_34__* next; } ;
struct TYPE_31__ {int /*<<< orphan*/  len; TYPE_4__* p; } ;
struct TYPE_32__ {char const* sc; TYPE_5__ a; TYPE_7__* p; } ;
struct TYPE_33__ {scalar_t__ kind; TYPE_6__ u; } ;
struct TYPE_29__ {TYPE_2__* p; } ;
struct TYPE_30__ {scalar_t__ kind; TYPE_3__ u; } ;
struct TYPE_27__ {char const* sc; } ;
struct TYPE_28__ {scalar_t__ kind; TYPE_1__ u; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int NUM_PARAM ; 
 scalar_t__ TYPE_ARRAY ; 
 scalar_t__ TYPE_POINTER ; 
 scalar_t__ TYPE_SCALAR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 TYPE_7__* FUNC2 (TYPE_7__*,TYPE_8__*) ; 
 TYPE_7__* FUNC3 (TYPE_7__*,TYPE_8__*) ; 
 TYPE_7__* FUNC4 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*) ; 
 TYPE_7__* FUNC7 (TYPE_7__*,TYPE_7__**) ; 
 int /*<<< orphan*/  lexer_line ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 TYPE_7__ string_type ; 
 scalar_t__ FUNC9 (char const*,char*,int) ; 

type_p
FUNC10 (type_p t, options_p opt)
{
  int length_p = 0;
  const int pointer_p = t->kind == TYPE_POINTER;
  type_p params[NUM_PARAM];
  int params_p = 0;
  int i;

  for (i = 0; i < NUM_PARAM; i++)
    params[i] = NULL;

  for (; opt; opt = opt->next)
    if (FUNC8 (opt->name, "length") == 0)
      length_p = 1;
    else if (FUNC8 (opt->name, "param_is") == 0
	     || (FUNC9 (opt->name, "param", 5) == 0
		 && FUNC0 (opt->name[5])
		 && FUNC8 (opt->name + 6, "_is") == 0))
      {
	int num = FUNC0 (opt->name[5]) ? opt->name[5] - '0' : 0;

	if (! FUNC1 (t)
	    && (t->kind != TYPE_POINTER || ! FUNC1 (t->u.p)))
	  {
	    FUNC6 (&lexer_line,
   "option `%s' may only be applied to structures or structure pointers",
			   opt->name);
	    return t;
	  }

	params_p = 1;
	if (params[num] != NULL)
	  FUNC6 (&lexer_line, "duplicate `%s' option", opt->name);
	if (! FUNC0 (opt->name[5]))
	  params[num] = FUNC5 ((type_p) opt->info);
	else
	  params[num] = (type_p) opt->info;
      }
    else if (FUNC8 (opt->name, "special") == 0)
      {
	const char *special_name = opt->info;
	if (FUNC8 (special_name, "tree_exp") == 0)
	  t = FUNC3 (t, opt);
	else if (FUNC8 (special_name, "rtx_def") == 0)
	  t = FUNC2 (t, opt);
	else
	  FUNC6 (&lexer_line, "unknown special `%s'", special_name);
      }

  if (params_p)
    {
      type_p realt;

      if (pointer_p)
	t = t->u.p;
      realt = FUNC7 (t, params);
      t = pointer_p ? FUNC5 (realt) : realt;
    }

  if (! length_p
      && pointer_p
      && t->u.p->kind == TYPE_SCALAR
      && (FUNC8 (t->u.p->u.sc, "char") == 0
	  || FUNC8 (t->u.p->u.sc, "unsigned char") == 0))
    return &string_type;
  if (t->kind == TYPE_ARRAY && t->u.a.p->kind == TYPE_POINTER
      && t->u.a.p->u.p->kind == TYPE_SCALAR
      && (FUNC8 (t->u.a.p->u.p->u.sc, "char") == 0
	  || FUNC8 (t->u.a.p->u.p->u.sc, "unsigned char") == 0))
    return FUNC4 (&string_type, t->u.a.len);

  return t;
}