
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_type {int flags; int name; } ;






 int _ (char*) ;
 int alpha_addr32_on ;
 int alpha_debug ;
 int alpha_flag_hash_long_names ;
 int alpha_flag_mdebug ;
 int alpha_flag_relax ;
 int alpha_flag_show_after_trunc ;
 int alpha_nofloats_on ;
 int alpha_target ;
 int alpha_target_name ;
 int as_warn (int ,char*) ;
 int atoi (char*) ;
 struct cpu_type* cpu_types ;
 int g_switch_value ;
 int strcmp (char*,int ) ;

int
md_parse_option (int c, char *arg)
{
  switch (c)
    {
    case 'F':
      alpha_nofloats_on = 1;
      break;

    case 131:
      alpha_addr32_on = 1;
      break;

    case 'g':
      alpha_debug = 1;
      break;

    case 'G':
      g_switch_value = atoi (arg);
      break;

    case 'm':
      {
 const struct cpu_type *p;

 for (p = cpu_types; p->name; ++p)
   if (strcmp (arg, p->name) == 0)
     {
       alpha_target_name = p->name, alpha_target = p->flags;
       goto found;
     }
 as_warn (_("Unknown CPU identifier `%s'"), arg);
      found:;
      }
      break;
    case 128:
      alpha_flag_relax = 1;
      break;
    default:
      return 0;
    }

  return 1;
}
