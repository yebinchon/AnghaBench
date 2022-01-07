
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_option_table {int* option; char* deprecated; int value; int * var; } ;
struct arm_long_option_table {int* option; char* deprecated; int (* func ) (int ) ;} ;
struct arm_legacy_option_table {int* option; char* deprecated; int value; int ** var; } ;




 int _ (char*) ;
 struct arm_legacy_option_table* arm_legacy_opts ;
 struct arm_long_option_table* arm_long_opts ;
 struct arm_option_table* arm_opts ;
 int as_tsktsk (int ,int,char*,int ) ;
 int streq (char*,int ) ;
 int strlen (int*) ;
 int strncmp (char*,int ,int ) ;
 int stub1 (int ) ;
 int target_big_endian ;

int
md_parse_option (int c, char * arg)
{
  struct arm_option_table *opt;
  const struct arm_legacy_option_table *fopt;
  struct arm_long_option_table *lopt;

  switch (c)
    {

    case 129:
      target_big_endian = 1;
      break;



    case 128:
      target_big_endian = 0;
      break;


    case 'a':


      return 0;

    default:
      for (opt = arm_opts; opt->option != ((void*)0); opt++)
 {
   if (c == opt->option[0]
       && ((arg == ((void*)0) && opt->option[1] == 0)
    || streq (arg, opt->option + 1)))
     {







       if (opt->var != ((void*)0))
  *opt->var = opt->value;

       return 1;
     }
 }

      for (fopt = arm_legacy_opts; fopt->option != ((void*)0); fopt++)
 {
   if (c == fopt->option[0]
       && ((arg == ((void*)0) && fopt->option[1] == 0)
    || streq (arg, fopt->option + 1)))
     {







       if (fopt->var != ((void*)0))
  *fopt->var = &fopt->value;

       return 1;
     }
 }

      for (lopt = arm_long_opts; lopt->option != ((void*)0); lopt++)
 {

   if (c == lopt->option[0]
       && arg != ((void*)0)
       && strncmp (arg, lopt->option + 1,
     strlen (lopt->option + 1)) == 0)
     {
       return lopt->func (arg + strlen (lopt->option) - 1);
     }
 }

      return 0;
    }

  return 1;
}
