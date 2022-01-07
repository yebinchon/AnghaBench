
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct write_types_data {int prefix; scalar_t__ param_prefix; } ;
struct walk_type_data {int indent; char** prev_val; char* val; int process_field; int opt; int of; int * param; int bitmap; TYPE_1__* line; struct write_types_data const* cookie; } ;
typedef TYPE_2__* pair_p ;
typedef int outf_p ;
typedef int d ;
struct TYPE_4__ {int file; } ;
struct TYPE_5__ {char* name; int type; int opt; TYPE_1__ line; } ;


 int free (char*) ;
 int get_base_file_bitmap (int ) ;
 int memset (struct walk_type_data*,int ,int) ;
 int oprintf (int ,char*,...) ;
 int walk_type (int ,struct walk_type_data*) ;
 int write_types_local_process_field ;
 int write_types_process_field ;
 char* xasprintf (char*,char*) ;

__attribute__((used)) static void
write_array (outf_p f, pair_p v, const struct write_types_data *wtd)
{
  struct walk_type_data d;
  char *prevval3;

  memset (&d, 0, sizeof (d));
  d.of = f;
  d.cookie = wtd;
  d.indent = 2;
  d.line = &v->line;
  d.opt = v->opt;
  d.bitmap = get_base_file_bitmap (v->line.file);
  d.param = ((void*)0);

  d.prev_val[3] = prevval3 = xasprintf ("&%s", v->name);

  if (wtd->param_prefix)
    {
      oprintf (f, "static void gt_%sa_%s\n", wtd->param_prefix, v->name);
      oprintf (f,
       "    (void *, void *, gt_pointer_operator, void *);\n");
      oprintf (f, "static void gt_%sa_%s (ATTRIBUTE_UNUSED void *this_obj,\n",
        wtd->param_prefix, v->name);
      oprintf (d.of,
        "      ATTRIBUTE_UNUSED void *x_p,\n"
        "      ATTRIBUTE_UNUSED gt_pointer_operator op,\n"
        "      ATTRIBUTE_UNUSED void * cookie)\n");
      oprintf (d.of, "{\n");
      d.prev_val[0] = d.prev_val[1] = d.prev_val[2] = d.val = v->name;
      d.process_field = write_types_local_process_field;
      walk_type (v->type, &d);
      oprintf (f, "}\n\n");
    }

  d.opt = v->opt;
  oprintf (f, "static void gt_%sa_%s (void *);\n",
    wtd->prefix, v->name);
  oprintf (f, "static void\ngt_%sa_%s (ATTRIBUTE_UNUSED void *x_p)\n",
    wtd->prefix, v->name);
  oprintf (f, "{\n");
  d.prev_val[0] = d.prev_val[1] = d.prev_val[2] = d.val = v->name;
  d.process_field = write_types_process_field;
  walk_type (v->type, &d);
  free (prevval3);
  oprintf (f, "}\n\n");
}
