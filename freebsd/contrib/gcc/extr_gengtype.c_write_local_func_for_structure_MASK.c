#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  TYPE_7__* type_p ;
struct walk_type_data {char** prev_val; char* val; int fn_wants_lvalue; int indent; int /*<<< orphan*/  of; TYPE_7__** param; int /*<<< orphan*/  bitmap; TYPE_4__* line; int /*<<< orphan*/  opt; int /*<<< orphan*/  process_field; } ;
typedef  int /*<<< orphan*/  d ;
struct TYPE_18__ {char* file; } ;
struct TYPE_19__ {int /*<<< orphan*/  tag; int /*<<< orphan*/  bitmap; TYPE_4__ line; int /*<<< orphan*/  opt; } ;
struct TYPE_20__ {TYPE_5__ s; TYPE_13__* p; } ;
struct TYPE_21__ {scalar_t__ kind; TYPE_6__ u; } ;
struct TYPE_15__ {char* file; } ;
struct TYPE_16__ {TYPE_1__ line; } ;
struct TYPE_17__ {TYPE_2__ s; } ;
struct TYPE_14__ {TYPE_3__ u; } ;

/* Variables and functions */
 int NUM_PARAM ; 
 scalar_t__ TYPE_POINTER ; 
 scalar_t__ TYPE_UNION ; 
 scalar_t__ FUNC0 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct walk_type_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,struct walk_type_data*) ; 
 int /*<<< orphan*/  write_types_local_process_field ; 

__attribute__((used)) static void
FUNC6 (type_p orig_s, type_p s, type_p *param)
{
  const char *fn = s->u.s.line.file;
  int i;
  struct walk_type_data d;

  /* This is a hack, and not the good kind either.  */
  for (i = NUM_PARAM - 1; i >= 0; i--)
    if (param && param[i] && param[i]->kind == TYPE_POINTER
	&& FUNC0 (param[i]->u.p))
      fn = param[i]->u.p->u.s.line.file;

  FUNC2 (&d, 0, sizeof (d));
  d.of = FUNC1 (fn);

  d.process_field = write_types_local_process_field;
  d.opt = s->u.s.opt;
  d.line = &s->u.s.line;
  d.bitmap = s->u.s.bitmap;
  d.param = param;
  d.prev_val[0] = d.prev_val[2] = "*x";
  d.prev_val[1] = "not valid postage";  /* Guarantee an error.  */
  d.prev_val[3] = "x";
  d.val = "(*x)";
  d.fn_wants_lvalue = true;

  FUNC3 (d.of, "\n");
  FUNC3 (d.of, "void\n");
  FUNC3 (d.of, "gt_pch_p_");
  FUNC4 (d.of, orig_s);
  FUNC3 (d.of, " (ATTRIBUTE_UNUSED void *this_obj,\n"
	   "\tvoid *x_p,\n"
	   "\tATTRIBUTE_UNUSED gt_pointer_operator op,\n"
	   "\tATTRIBUTE_UNUSED void *cookie)\n");
  FUNC3 (d.of, "{\n");
  FUNC3 (d.of, "  %s %s * const x ATTRIBUTE_UNUSED = (%s %s *)x_p;\n",
	   s->kind == TYPE_UNION ? "union" : "struct", s->u.s.tag,
	   s->kind == TYPE_UNION ? "union" : "struct", s->u.s.tag);
  d.indent = 2;
  FUNC5 (s, &d);
  FUNC3 (d.of, "}\n");
}