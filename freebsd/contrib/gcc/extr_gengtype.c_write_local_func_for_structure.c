
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef TYPE_7__* type_p ;
struct walk_type_data {char** prev_val; char* val; int fn_wants_lvalue; int indent; int of; TYPE_7__** param; int bitmap; TYPE_4__* line; int opt; int process_field; } ;
typedef int d ;
struct TYPE_18__ {char* file; } ;
struct TYPE_19__ {int tag; int bitmap; TYPE_4__ line; int opt; } ;
struct TYPE_20__ {TYPE_5__ s; TYPE_13__* p; } ;
struct TYPE_21__ {scalar_t__ kind; TYPE_6__ u; } ;
struct TYPE_15__ {char* file; } ;
struct TYPE_16__ {TYPE_1__ line; } ;
struct TYPE_17__ {TYPE_2__ s; } ;
struct TYPE_14__ {TYPE_3__ u; } ;


 int NUM_PARAM ;
 scalar_t__ TYPE_POINTER ;
 scalar_t__ TYPE_UNION ;
 scalar_t__ UNION_OR_STRUCT_P (TYPE_13__*) ;
 int get_output_file_with_visibility (char const*) ;
 int memset (struct walk_type_data*,int ,int) ;
 int oprintf (int ,char*,...) ;
 int output_mangled_typename (int ,TYPE_7__*) ;
 int walk_type (TYPE_7__*,struct walk_type_data*) ;
 int write_types_local_process_field ;

__attribute__((used)) static void
write_local_func_for_structure (type_p orig_s, type_p s, type_p *param)
{
  const char *fn = s->u.s.line.file;
  int i;
  struct walk_type_data d;


  for (i = NUM_PARAM - 1; i >= 0; i--)
    if (param && param[i] && param[i]->kind == TYPE_POINTER
 && UNION_OR_STRUCT_P (param[i]->u.p))
      fn = param[i]->u.p->u.s.line.file;

  memset (&d, 0, sizeof (d));
  d.of = get_output_file_with_visibility (fn);

  d.process_field = write_types_local_process_field;
  d.opt = s->u.s.opt;
  d.line = &s->u.s.line;
  d.bitmap = s->u.s.bitmap;
  d.param = param;
  d.prev_val[0] = d.prev_val[2] = "*x";
  d.prev_val[1] = "not valid postage";
  d.prev_val[3] = "x";
  d.val = "(*x)";
  d.fn_wants_lvalue = 1;

  oprintf (d.of, "\n");
  oprintf (d.of, "void\n");
  oprintf (d.of, "gt_pch_p_");
  output_mangled_typename (d.of, orig_s);
  oprintf (d.of, " (ATTRIBUTE_UNUSED void *this_obj,\n"
    "\tvoid *x_p,\n"
    "\tATTRIBUTE_UNUSED gt_pointer_operator op,\n"
    "\tATTRIBUTE_UNUSED void *cookie)\n");
  oprintf (d.of, "{\n");
  oprintf (d.of, "  %s %s * const x ATTRIBUTE_UNUSED = (%s %s *)x_p;\n",
    s->kind == TYPE_UNION ? "union" : "struct", s->u.s.tag,
    s->kind == TYPE_UNION ? "union" : "struct", s->u.s.tag);
  d.indent = 2;
  walk_type (s, &d);
  oprintf (d.of, "}\n");
}
