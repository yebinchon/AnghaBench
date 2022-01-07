
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_4__* type_p ;
typedef int outf_p ;
struct TYPE_8__ {int * file; } ;
struct TYPE_9__ {TYPE_1__ line; } ;
struct TYPE_10__ {TYPE_2__ s; } ;
struct TYPE_11__ {scalar_t__ kind; TYPE_3__ u; } ;


 scalar_t__ TYPE_PARAM_STRUCT ;
 scalar_t__ UNION_OR_STRUCT_P (TYPE_4__*) ;
 int oprintf (int ,char*) ;
 int output_mangled_typename (int ,TYPE_4__*) ;

__attribute__((used)) static void
output_type_enum (outf_p of, type_p s)
{
  if (s->kind == TYPE_PARAM_STRUCT && s->u.s.line.file != ((void*)0))
    {
      oprintf (of, ", gt_e_");
      output_mangled_typename (of, s);
    }
  else if (UNION_OR_STRUCT_P (s) && s->u.s.line.file != ((void*)0))
    {
      oprintf (of, ", gt_ggc_e_");
      output_mangled_typename (of, s);
    }
  else
    oprintf (of, ", gt_types_enum_last");
}
