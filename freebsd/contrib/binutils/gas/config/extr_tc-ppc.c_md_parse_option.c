
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EF_PPC_EMB ;
 int EF_PPC_RELOCATABLE ;
 int EF_PPC_RELOCATABLE_LIB ;
 void* FALSE ;
 int SHLIB_MRELOCATABLE ;
 int SHLIB_PIC ;
 void* TRUE ;
 int _ (char*) ;
 int as_bad (int ,char*) ;
 int as_fatal (int ,char*) ;
 void* msolaris ;
 int parse_cpu (char*) ;
 int ppc_comment_chars ;
 int ppc_eabi_comment_chars ;
 int ppc_flags ;
 int ppc_obj64 ;
 int ppc_solaris_comment_chars ;
 int print_version_id () ;
 void* reg_names_p ;
 int set_target_endian ;
 int shlib ;
 int strcmp (char*,char*) ;
 int target_big_endian ;

int
md_parse_option (int c, char *arg)
{
  switch (c)
    {
    case 'u':


      break;
    case 'a':
      if (strcmp (arg, "64") == 0)
 {



   as_fatal (_("%s unsupported"), "-a64");

 }
      else if (strcmp (arg, "32") == 0)
 ppc_obj64 = 0;
      else
 return 0;
      break;

    case 'm':
      if (parse_cpu (arg))
 ;

      else if (strcmp (arg, "regnames") == 0)
 reg_names_p = TRUE;

      else if (strcmp (arg, "no-regnames") == 0)
 reg_names_p = FALSE;
      else
 {
   as_bad (_("invalid switch -m%s"), arg);
   return 0;
 }
      break;
    default:
      return 0;
    }

  return 1;
}
