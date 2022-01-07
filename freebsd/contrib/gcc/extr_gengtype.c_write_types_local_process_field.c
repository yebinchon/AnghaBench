
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* type_p ;
struct walk_type_data {int val; int indent; int of; int * prev_val; } ;
struct TYPE_3__ {int kind; } ;
 int gcc_unreachable () ;
 int oprintf (int ,char*,int ,char*,int ) ;

__attribute__((used)) static void
write_types_local_process_field (type_p f, const struct walk_type_data *d)
{
  switch (f->kind)
    {
    case 132:
    case 129:
    case 128:
    case 134:
    case 133:
    case 130:
      oprintf (d->of, "%*sif ((void *)(%s) == this_obj)\n", d->indent, "",
        d->prev_val[3]);
      oprintf (d->of, "%*s  op (&(%s), cookie);\n", d->indent, "", d->val);
      break;

    case 131:
      break;

    default:
      gcc_unreachable ();
    }
}
