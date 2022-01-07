
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lattice_val; int value; } ;
typedef TYPE_1__ prop_value_t ;
typedef int FILE ;







 int dump_flags ;
 int fprintf (int *,char*,char const*) ;
 int gcc_unreachable () ;
 int print_generic_expr (int *,int ,int ) ;

__attribute__((used)) static void
dump_lattice_value (FILE *outf, const char *prefix, prop_value_t val)
{
  switch (val.lattice_val)
    {
    case 130:
      fprintf (outf, "%sUNINITIALIZED", prefix);
      break;
    case 131:
      fprintf (outf, "%sUNDEFINED", prefix);
      break;
    case 128:
      fprintf (outf, "%sVARYING", prefix);
      break;
    case 129:
      fprintf (outf, "%sUNKNOWN_VAL", prefix);
      break;
    case 132:
      fprintf (outf, "%sCONSTANT ", prefix);
      print_generic_expr (outf, val.value, dump_flags);
      break;
    default:
      gcc_unreachable ();
    }
}
