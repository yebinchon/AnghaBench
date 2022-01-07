
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int flags; int type; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int CONST_STRNEQ (char const*,char*) ;





 int _ (char*) ;
 int as_fatal (int ,...) ;
 char** bfd_target_list () ;
 TYPE_1__* cpu_arch ;
 int cpu_arch_isa ;
 int cpu_arch_isa_flags ;
 int cpu_arch_tune ;
 int cpu_arch_tune_flags ;
 int cpu_arch_tune_set ;
 char* default_arch ;
 int free (char const**) ;
 char* i386_comment_chars ;
 int optimize_align_code ;
 int print_version_id () ;
 int quiet_warnings ;
 int strcmp (char const*,char*) ;
 int strlen (char*) ;
 scalar_t__ xmalloc (int ) ;

int
md_parse_option (int c, char *arg)
{
  unsigned int i;

  switch (c)
    {
    case 'n':
      optimize_align_code = 0;
      break;

    case 'q':
      quiet_warnings = 1;
      break;
    case 132:
      default_arch = "i386";
      break;

    case 130:
      break;

    case 129:
      if (*arg == '.')
 as_fatal (_("Invalid -march= option: `%s'"), arg);
      for (i = 0; i < ARRAY_SIZE (cpu_arch); i++)
 {
   if (strcmp (arg, cpu_arch [i].name) == 0)
     {
       cpu_arch_isa = cpu_arch[i].type;
       cpu_arch_isa_flags = cpu_arch[i].flags;
       if (!cpu_arch_tune_set)
  {
    cpu_arch_tune = cpu_arch_isa;
    cpu_arch_tune_flags = cpu_arch_isa_flags;
  }
       break;
     }
 }
      if (i >= ARRAY_SIZE (cpu_arch))
 as_fatal (_("Invalid -march= option: `%s'"), arg);
      break;

    case 128:
      if (*arg == '.')
 as_fatal (_("Invalid -mtune= option: `%s'"), arg);
      for (i = 0; i < ARRAY_SIZE (cpu_arch); i++)
 {
   if (strcmp (arg, cpu_arch [i].name) == 0)
     {
       cpu_arch_tune_set = 1;
       cpu_arch_tune = cpu_arch [i].type;
       cpu_arch_tune_flags = cpu_arch[i].flags;
       break;
     }
 }
      if (i >= ARRAY_SIZE (cpu_arch))
 as_fatal (_("Invalid -mtune= option: `%s'"), arg);
      break;

    default:
      return 0;
    }
  return 1;
}
