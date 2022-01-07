
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_4__* type_p ;
typedef int outf_p ;
struct TYPE_7__ {TYPE_4__* stru; TYPE_4__** param; } ;
struct TYPE_6__ {int tag; } ;
struct TYPE_8__ {TYPE_2__ param_struct; TYPE_1__ s; TYPE_4__* p; } ;
struct TYPE_9__ {int kind; TYPE_3__ u; } ;


 int NUM_PARAM ;
 int gcc_unreachable () ;
 int oprintf (int ,char*,...) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void
output_mangled_typename (outf_p of, type_p t)
{
  if (t == ((void*)0))
    oprintf (of, "Z");
  else switch (t->kind)
    {
    case 132:
      oprintf (of, "P");
      output_mangled_typename (of, t->u.p);
      break;
    case 131:
      oprintf (of, "I");
      break;
    case 130:
      oprintf (of, "S");
      break;
    case 129:
    case 128:
    case 134:
      oprintf (of, "%lu%s", (unsigned long) strlen (t->u.s.tag), t->u.s.tag);
      break;
    case 133:
      {
 int i;
 for (i = 0; i < NUM_PARAM; i++)
   if (t->u.param_struct.param[i] != ((void*)0))
     output_mangled_typename (of, t->u.param_struct.param[i]);
 output_mangled_typename (of, t->u.param_struct.stru);
      }
      break;
    case 135:
      gcc_unreachable ();
    }
}
